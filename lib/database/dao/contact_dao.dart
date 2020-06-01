import 'package:bytebankpersistence/database/constantes_database.dart';
import 'package:bytebankpersistence/models/Contact.dart';
import 'package:sqflite/sqflite.dart';

import '../app_database.dart';

class ContactDao {

  Future<int> save(Contact contact) async {
    final Database db = await getDataBase();
    return toMap(contact, db);
  }

  Future<List<Contact>> findAll() async {
    final Database db = await getDataBase();
    final List<Map<String, dynamic>> result = await db.query(ConstantesDataBase.tableName);
    return toList(result);
  }

  Future<int> toMap(Contact contact, Database db) {
    final Map<String, dynamic> contactsMap = Map();
    contactsMap[ConstantesDataBase.name] = contact.name;
    contactsMap[ConstantesDataBase.accountNumber] = contact.accountNumber;
    return db.insert(ConstantesDataBase.tableName, contactsMap);
  }

  List<Contact> toList(List<Map<String, dynamic>> result) {
    final List<Contact> contacts = List();
    for (Map<String, dynamic> row in result) {
      final Contact contact = Contact(
        row[ConstantesDataBase.id],
        row[ConstantesDataBase.name],
        row[ConstantesDataBase.accountNumber],
      );
      contacts.add(contact);
    }
    return contacts;
  }
}