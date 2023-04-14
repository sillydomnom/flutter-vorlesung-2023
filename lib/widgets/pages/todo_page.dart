import 'package:flutter/material.dart';
import 'package:flutter_vorlesung/repositories/todo_model.dart';
import 'package:flutter_vorlesung/repositories/todo_repository.dart';

class TodoPage extends StatelessWidget {
  final TodoRepository todoRepository = TodoRepository();

  TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: todoRepository.getTodos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: snapshot.data?.todos.map((e) => _TodoElement(e)).toList() ?? [],
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

class _TodoElement extends StatelessWidget {
  final Todo todo;

  const _TodoElement(this.todo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          title: Text(todo.title),
          leading: Icon(todo.done ? Icons.check : Icons.question_mark),
        ),
      ),
    );
  }
}
