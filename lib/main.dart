import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vorlesung/blocs/counter/counter_bloc.dart';
import 'package:flutter_vorlesung/widgets/button_section.dart';
import 'package:flutter_vorlesung/widgets/hit_counter.dart';
import 'package:flutter_vorlesung/widgets/name_field.dart';

import 'blocs/name/name_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CounterBloc _counterBloc;
  late NameBloc _nameBloc;

  @override
  void initState() {
    _counterBloc = CounterBloc();
    _nameBloc = NameBloc();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _nameBloc,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: BlocBuilder<NameBloc, String?>(
            builder: (context, state) {
              return Text(state ?? widget.title);
            },
          ),
        ),
        body: BlocProvider(
          create: (context) => _counterBloc,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HitCounter(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ButtonSection(),
                ),
                NameField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
