import 'package:flutter/material.dart';
import 'package:flutter_vorlesung/model/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key, required this.todo}) : super(key: key);
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(todo.title),
        leading: todo.done
          ? const Icon(Icons.check, color: Colors.green)
          : const Icon(Icons.question_mark, color: Colors.grey),
      ),
    );
  }
}