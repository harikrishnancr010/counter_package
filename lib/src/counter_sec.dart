import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterWidgetSec extends StatefulWidget {
  const CounterWidgetSec({super.key});

  @override
  State<CounterWidgetSec> createState() => _CounterWidgetSecState();
}

class _CounterWidgetSecState extends State<CounterWidgetSec> {
  int currentCount = 60;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        setState(() {
          currentCount--;
        });
      },
      minSize: 0,
      padding: EdgeInsets.zero,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.amber),
        child: Center(
          child: Text(
            '$currentCount',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
