import 'package:bytebankpersistence/http/webclient.dart';
import 'package:bytebankpersistence/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'models/Contact.dart';
import 'models/transaction.dart';


void main() {
  runApp(BytebankApp());
//  save(Transaction(200.0, Contact(0, 'Gui', 2000))).then((transaction) => print(transaction));
//  findAll().then((transactions) => print('new Transaction: $transactions'));
}

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}


