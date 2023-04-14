import 'dart:convert';

import 'package:flutter_vorlesung/repositories/todos_model.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  Future<Todos> getTodos() async {
    var response = await http.get(Uri.https('dummyjson.com', 'todos'));
    var body = jsonDecode(response.body) as Map<String, dynamic>;

    final todos = Todos.fromJson(body);

    return todos;
  }
}
