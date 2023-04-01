part of 'name_bloc.dart';

class NameState extends Equatable {
  final String name;

  const NameState({
    this.name = "Aufgabe 5",
  });

  @override
  List<Object> get props => [name];
}