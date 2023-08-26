part of 'my_class_bloc.dart';

@immutable
sealed class MyClassEvent {}

class ChangeMyClass extends MyClassEvent{
  final String myClass;

  ChangeMyClass(this.myClass);
}