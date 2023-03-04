import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup(this._changeCounter, {super.key});

  final ValueChanged<int> _changeCounter;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      ElevatedButton(
        onPressed: () => _changeCounter(1),
        child: const Text('Positiv'),
      ),
      ElevatedButton(
        onPressed: () => _changeCounter(-1),
        child: const Text('Negativ'),
      ),
    ]);
  }
}
