class Todo{
  final int id;
  final String title;
  final bool done;

  Todo({
    required this.id,
    required this.title,
    required this.done
  });

  factory Todo.fromJson(Map<String, dynamic> json){
    return Todo(
      id: json['id'],
      title : json['todo'],
      done : json ['completed'],
    );
  }
}