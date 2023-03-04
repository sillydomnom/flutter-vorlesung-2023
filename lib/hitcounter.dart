import 'package:flutter/material.dart';

class HitCounter extends StatelessWidget {
  const HitCounter(this.counter, {super.key});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
