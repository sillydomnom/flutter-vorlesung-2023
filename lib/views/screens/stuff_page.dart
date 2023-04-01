import 'package:flutter/material.dart';

class StuffPage extends StatelessWidget {
  const StuffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: const Center(
        child: Text('Very Big Red')
      )
    );
  }
}