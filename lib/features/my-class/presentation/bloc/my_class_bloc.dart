import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'my_class_event.dart';
part 'my_class_state.dart';

@injectable
class MyClassBloc extends Bloc<MyClassEvent, MyClassState> {
  MyClassBloc() : super(MyClassInitial()) {
    on<MyClassEvent>((event, emit) {
      if (event is ChangeMyClass) {
        emit(MyClassChanged(event.myClass));
      }
    });
  }
}
