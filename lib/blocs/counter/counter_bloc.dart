import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<CounterIncrement>((event, emit) => emit(CounterChanged(count: state.count + 1)));
    on<CounterDecrease>((event, emit) => emit(CounterChanged(count: state.count - 1)));
  }
}
