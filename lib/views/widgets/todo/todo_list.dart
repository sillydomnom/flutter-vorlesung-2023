import 'package:flutter/material.dart';
import 'package:flutter_vorlesung/model/todo.dart';
import 'package:flutter_vorlesung/views/widgets/todo/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key, required this.list}) : super(key: key);
  final List<Todo> list;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: list.map((elem) => TodoItem(todo: elem)).toList(),
      ),
    );
  }
}