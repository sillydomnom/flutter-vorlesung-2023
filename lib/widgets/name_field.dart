import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vorlesung/blocs/name/name_bloc.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        children: [
          const Text('Please enter your name:'),
          TextField(onSubmitted: (name) => BlocProvider.of<NameBloc>(context).add(NameChanged(name: name)), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}