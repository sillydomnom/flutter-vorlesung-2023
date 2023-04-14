import 'package:flutter_vorlesung/repositories/todo_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todos_model.g.dart';

@JsonSerializable()
class Todos {
  final List<Todo> todos;

  Todos(this.todos);

  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);

  Map<String, dynamic> toJson() => _$TodosToJson(this);
}