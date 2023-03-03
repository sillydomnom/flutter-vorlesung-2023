part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int count;

  const CounterState({
    required this.count,
  });

  @override
  List<Object> get props => [count];
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(count: 0);
}

class CounterChanged extends CounterState {
  const CounterChanged({required super.count});
}
