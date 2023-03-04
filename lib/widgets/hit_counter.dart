import 'package:flutter/material.dart';

class HitCounter extends StatelessWidget {
  final int _counter;

  const HitCounter({
    super.key, 
    required counter,
  }) : _counter = counter;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
      ],
    );
  }

}