import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ryc_expenses/components/transaction_form.dart';
import 'package:ryc_expenses/components/transaction_list.dart';
import 'package:ryc_expenses/models/transaction.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.blue,
            child: Text('Gráfico'),
            elevation: 5,
          ),
          TransactionList(_transactions),
          TransactionForm(),
        ],
      ),
    );
  }
}
