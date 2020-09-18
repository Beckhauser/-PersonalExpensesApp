import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/widgets.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction('t1', 'Novo Tênis de Corrida', 310, DateTime.now()),
    Transaction('t2', 'Conta de água', 120, DateTime.now()),
    Transaction('t3', 'Novo Celular', 3500, DateTime.now()),
    Transaction('t4', 'Conta de luz', 130, DateTime.now()),
    Transaction('t5', 'Conta de luz', 130, DateTime.now()),
    Transaction('t6', 'Conta de luz', 130, DateTime.now()),
    Transaction('t7', 'Conta de luz', 130, DateTime.now()),
    Transaction('t7', 'Conta de luz', 130, DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    Transaction newTransaction = Transaction(
        Random().nextDouble().toString(), title, value, DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
