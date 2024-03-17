import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'myscore_event.dart';
part 'myscore_state.dart';

class MyScoreBloc extends Bloc<MyScoreEvent, MyScoreState> {
  MyScoreBloc() : super(MyScoreInitial()) {
    on<MyScoreEvent>((event, emit) {
      if (event is MyScoreUniversityEvent) {
        emit(
          MyScoreUniversityState(
            university: event.university,
          ),
        );
      }
    });
  }
}
