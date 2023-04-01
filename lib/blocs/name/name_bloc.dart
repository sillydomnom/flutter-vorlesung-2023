import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'name_event.dart';
part 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  NameBloc() : super(const NameState()) {
    on<NameChanged>((event, emit) {
      emit(NameState(name:"${event.name}'s App"));
    });
  }
}