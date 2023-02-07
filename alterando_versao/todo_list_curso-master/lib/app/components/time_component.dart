import 'package:flutter/material.dart';

class TimeComponent extends StatelessWidget {
  final ValueChanged<String> onSelectedItem;

  final List<String> _hours = List.generate(25, (i) => i++).map((n) => n < 9 ? '0$n' : '$n').toList();
  final List<String> _min = List.generate(60, (i) => i++).map((n) => n < 9 ? '0$n' : '$n').toList();
  final List<String> _sec = List.generate(60, (i) => i++).map((n) => n < 9 ? '0$n' : '$n').toList();

  TimeComponent({
    this.onSelectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _makeBox(context, _hours),
        _makeBox(context, _min),
        _makeBox(context, _sec),
      ],
    );
  }

  Container _makeBox(context, List<String> options) {
    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(offset: Offset(2, 5), spreadRadius: 0, blurRadius: 10, color: Theme.of(context).primaryColor)],
      ),
      child: ListWheelScrollView(
        physics: FixedExtentScrollPhysics(),
        onSelectedItemChanged: (value) => onSelectedItem(_hours[value]),
        children: options.map<Text>((n) => Text('$n', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold))).toList(),
        itemExtent: 60,
        // offAxisFraction: -0.8,
        perspective: 0.007,
        clipToSize: true,
        // diameterRatio: 1.5,
      ),
    );
  }
}
