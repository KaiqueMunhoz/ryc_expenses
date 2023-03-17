import 'package:flutter/material.dart';
import 'package:ryc_expenses/models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  const Chart(this.recentTransaction, {Key key}) : super(key: key);

  List<Map<String, Object>> get groupedTransaction {
    final int _numberOfDaysOfAWeek = 7;

    return List.generate(_numberOfDaysOfAWeek, (index) {
      final DateTime weekDay = DateTime.now().subtract(Duration(days: index));

      return {'day': 'T', 'value': 9.99};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [],
      ),
    );
  }
}
