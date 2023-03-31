import 'dart:convert';

import 'package:flutter_vorlesung/repositories/todo_model.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  Future<List<Todo>> getTodos() async {
    var response = await http.get(Uri.https('dummyjson.com', 'todos'));
    var todos = jsonDecode(response.body) as Map<String, dynamic>;

    final result = (todos['todos'] as List<dynamic>)
        .map(
          (todo) => Todo(id: todo['id'], title: todo['todo'], done: todo['completed']),
        )
        .toList();

    return result;
  }
}
