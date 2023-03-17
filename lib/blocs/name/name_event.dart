part of 'name_bloc.dart';

abstract class NameEvent extends Equatable {
  final String name;

  const NameEvent({required this.name});

  @override
  List<Object> get props => [NameBloc()];
}

class NameChanged extends NameEvent {
  const NameChanged({required super.name});
}
