import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_web/sembast_web.dart';

class SembastInjection {
  static const _sembastDbFileName = 'tecylab.db';

  static const _version = 1;

  SembastInjection._(this.db);

  final Database db;

  final destinationStore = intMapStoreFactory.store('destinations');

  static SembastInjection? _instance;

  static Future<SembastInjection> getInstance() async {
    if (_instance == null) {
      final db = await _initDB(_sembastDbFileName);
      _instance = SembastInjection._(db);
    }

    return _instance!;
  }

  static Future<Database> _initDB(String filePath) async {
    if (kIsWeb) {
      return databaseFactoryWeb.openDatabase(_sembastDbFileName,
          version: _version);
    }

    final appDirectory = await getApplicationDocumentsDirectory();

    final dbPath = join(appDirectory.path, filePath);

    return databaseFactoryIo.openDatabase(dbPath);
  }
}
