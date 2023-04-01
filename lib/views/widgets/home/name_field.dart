import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vorlesung/blocs/name/name_bloc.dart';

class NameField extends StatelessWidget {
  const NameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Bitte Namen eingeben:'),
        TextField(
          textAlign: TextAlign.center,
          onSubmitted: (text) => BlocProvider.of<NameBloc>(context).add(NameChanged(name: text))
        ),
      ],
    );
  }
}