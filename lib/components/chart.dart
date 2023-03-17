import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key key}) : super(key: key);

  List<Map<String, Object>> get groupedTransaction {
    return List.generate(7, (index) {
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
