import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vorlesung/blocs/name/name_bloc.dart';
import 'package:flutter_vorlesung/blocs/counter/counter_bloc.dart';
import 'package:flutter_vorlesung/views/widgets/overview_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(lazy: false, create: (BuildContext context) => NameBloc()),
        BlocProvider(lazy: false, create: (BuildContext context) => CounterBloc()),
      ],
      child: const MaterialApp(
        title: 'Aufgaben Flutter',
        home: Overview(),
      )
    );
  }
}
