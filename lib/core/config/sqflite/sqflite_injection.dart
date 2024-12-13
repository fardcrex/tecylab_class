import 'package:sqflite/sqflite.dart';

class SqfliteInjection {
  static const _sqlfliteFileName = 'tecylab.db';

  static const _version = 1;

  final Database db;

  SqfliteInjection._(this.db);

  static SqfliteInjection? _instance;

  static Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();

    final path = '$dbPath/$filePath';

    return await openDatabase(path, version: _version, onCreate: (db, version) {
      return db.execute('''
        CREATE TABLE destinations(
          id INTEGER PRIMARY KEY,
          countryFrom TEXT,
          countryTo TEXT,
          imageCountryTo TEXT,
          travelMode TEXT,
          priceMode TEXT,
          primaryPrice REAL,
          discount REAL
        )
       ''');
    });
  }

  static Future<SqfliteInjection> getInstance() async {
    if (_instance == null) {
      final db = await _initDB(_sqlfliteFileName);
      _instance = SqfliteInjection._(db);
    }
    return _instance!;
  }
}
