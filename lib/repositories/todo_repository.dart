import 'dart:convert';

import 'package:flutter_vorlesung/model/todo.dart';
import 'package:http/http.dart' as http;

class TodoRepository {
  Future<List<Todo>> getTodoList() async {
    final response = await http.get(Uri.https('dummyjson.com', 'todos'));
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      return (responseJson['todos'] as List<dynamic>).map((elem) => Todo.fromJson(elem)).toList();
    }
    return [];
  }
}