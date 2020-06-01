class ConstantesDataBase {
  static const String tableSql = 'CREATE TABLE $tableName('
      '$id INTEGER PRIMARY KEY, '
      '$name TEXT, '
      '$accountNumber INTEGER)';
  static const String tableName = "contacts";
  static const String id = "id";
  static const String name = "name";
  static const String accountNumber = "account_number";
}