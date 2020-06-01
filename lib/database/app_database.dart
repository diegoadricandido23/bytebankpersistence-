import 'package:bytebankpersistence/database/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'constantes_database.dart';

Future<Database> getDataBase() async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, 'bytebank.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(ConstantesDataBase.tableSql);
    },
    version: 1,
//      onDowngrade: onDatabaseDowngradeDelete
  );
}
