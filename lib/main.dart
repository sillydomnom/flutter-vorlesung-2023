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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
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
  int _selectedIndex = 0;

  late CounterBloc _counterBloc;
  late NameBloc _nameBloc;

  final _contentWidgets = <Widget>[
    _HomeContent(),
    const Text('Weather'),
    const Text('Stuff'),
  ];

  @override
  void initState() {
    _counterBloc = CounterBloc();
    _nameBloc = NameBloc();

    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sunny),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Stuff',
          ),
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
        body: BlocProvider(
          create: (context) => _counterBloc,
          child: Center(
            child: _contentWidgets.elementAt(_selectedIndex),
          ),
        ),
      ),
    );
  }
}

class _HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        HitCounter(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: ButtonSection(),
        ),
        NameField(),
      ],
    );
  }
}
