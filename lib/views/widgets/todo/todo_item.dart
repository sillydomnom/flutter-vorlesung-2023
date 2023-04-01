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
        trailing: todo.done
          ? const Icon(Icons.check_box, color: Colors.green)
          : const Icon(Icons.check_box_outline_blank, color: Colors.grey),
      ),
    );
  }
}