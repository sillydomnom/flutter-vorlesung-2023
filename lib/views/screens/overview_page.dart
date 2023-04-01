import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vorlesung/blocs/name/name_bloc.dart';
import 'package:flutter_vorlesung/views/screens/home_page.dart';
import 'package:flutter_vorlesung/views/screens/stuff_page.dart';
import 'package:flutter_vorlesung/views/screens/todo_page.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  int _selectedIndex = 0;

  final _content = const <Widget>[
    HomePage(),
    TodoPage(),
    StuffPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NameBloc, NameState>(
      builder: (context, state) {
        return Scaffold(
        appBar: AppBar(
          title: Text(state.name)
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: 'Todo',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.color_lens),
                label: 'Red',
            ),
          ],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
        ),
        body: Center(
            child: _content[_selectedIndex],
          ),
        );
      }
    );
  }
}