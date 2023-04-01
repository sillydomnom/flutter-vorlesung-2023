import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vorlesung/blocs/counter/counter_bloc.dart';

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          ElevatedButton(onPressed: () => BlocProvider.of<CounterBloc>(context).add(CounterIncrement()), child: const Text('Increment')),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          ElevatedButton(onPressed: () => BlocProvider.of<CounterBloc>(context).add(CounterDecrease()), child: const Text('Decrease')),
        ],
      ),
    );
  }
}