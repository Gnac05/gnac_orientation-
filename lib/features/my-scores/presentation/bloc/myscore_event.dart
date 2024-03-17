part of 'myscore_bloc.dart';

@immutable
sealed class MyScoreEvent {}

class MyScoreUniversityEvent extends MyScoreEvent {
  final int university;

  MyScoreUniversityEvent({required this.university});
}
