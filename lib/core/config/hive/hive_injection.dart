import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveInjection {
  late final Box<dynamic> _box;

  HiveInjection._(this._box);

  static HiveInjection? _instance;

  /// Inicializa Hive y abre una caja (box) llamada 'destinations'.
  static Future<HiveInjection> getInstance() async {
    if (_instance == null) {
      // Inicializa Hive en la ubicación de almacenamiento.
      final appDir = await getApplicationDocumentsDirectory();
      Hive.init(appDir.path);

      // Registra adaptadores (si es necesario para tipos personalizados).
      // Hive.registerAdapter(DestinationAdapter());

      // Abre o crea la caja de Hive.
      final box = await Hive.openBox<dynamic>('destinations');
      _instance = HiveInjection._(box);
    }
    return _instance!;
  }

  /// Cierra Hive y libera los recursos.
  Future<void> dispose() async {
    await _box.close();
    _instance = null;
  }

  Box<dynamic> get destinationBox => _box;
}
