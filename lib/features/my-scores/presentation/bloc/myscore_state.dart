part of 'myscore_bloc.dart';

@immutable
sealed class MyScoreState{}

class MyScoreInitial extends MyScoreState {}

class MyScoreUniversityState extends MyScoreState {
  final int university;

  MyScoreUniversityState({required this.university});
  
}