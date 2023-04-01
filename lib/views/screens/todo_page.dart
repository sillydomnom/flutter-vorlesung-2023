import 'package:flutter/material.dart';
import 'package:flutter_vorlesung/repositories/todo_repository.dart';
import 'package:flutter_vorlesung/views/widgets/todo/todo_list.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: TodoRepository().getTodoList(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const CircularProgressIndicator();
        return TodoList(list: snapshot.data!);
      }
    );
  }
}