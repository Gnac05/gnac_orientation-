part of 'my_class_bloc.dart';

@immutable
sealed class MyClassState {}

final class MyClassInitial extends MyClassState {}

final class MyClassChanged extends MyClassState {
  final String myClass;

  MyClassChanged(this.myClass);
}