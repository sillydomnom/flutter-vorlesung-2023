import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'name_event.dart';

class NameBloc extends Bloc<NameEvent, String?> {
  NameBloc() : super(null) {
    on<NameChanged>((event, emit) {
      if (event.name == 'Dominik') {
        emit('Flutter Vorlesung');
        return;
      } 

      final appName = "${event.name}'s App";
      emit(appName);
    });
  }
}
