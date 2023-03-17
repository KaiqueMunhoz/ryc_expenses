import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;

  const ChartBar({
    Key key,
    @required this.label,
    @required this.value,
    @required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
