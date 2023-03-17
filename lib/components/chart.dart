import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ryc_expenses/models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  const Chart(this.recentTransaction, {Key key}) : super(key: key);

  List<Map<String, Object>> get groupedTransaction {
    final int _numberOfDaysOfAWeek = 7;

    return List.generate(_numberOfDaysOfAWeek, (index) {
      final DateTime weekDay = DateTime.now().subtract(Duration(days: index));
      final String _day = DateFormat.E().format(weekDay)[0];

      double totalSum = 0.0;

      for (int i = 0; i < recentTransaction.length; i++) {
        bool sameDay = recentTransaction[i].date.day == weekDay.day;
        bool sameMonth = recentTransaction[i].date.month == weekDay.month;
        bool sameYear = recentTransaction[i].date.year == weekDay.year;

        if (sameDay && sameMonth && sameYear) {
          totalSum += recentTransaction[i].value;
        }

        print("_day ${_day}");
        print("totalSum ${totalSum}");
      }

      return {'day': _day, 'value': 9.99};
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
