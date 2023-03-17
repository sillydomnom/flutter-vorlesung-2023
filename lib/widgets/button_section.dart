import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vorlesung/blocs/counter/counter_bloc.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Column(
      children: [
        ElevatedButton(onPressed: () => counterBloc.add(CounterIncrement()), child: const Text('Increment')),
        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        ElevatedButton(onPressed: () => counterBloc.add(CounterDecrease()), child: const Text('Decrease')),
      ],
    );
  }
}
