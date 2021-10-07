import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        title: 'Title 1',
        amount: 69.99,
        date: DateTime.now()
    ),
    Transaction(
        id: 't2',
        title: 'Car',
        amount: 82.25,
        date: DateTime.now()
    )
  ];

  void _addNewTransaction(String title, double amount) {
    final tx = Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString()
    );

    setState(() {
      _userTransactions.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions)
    ]);
  }
}
