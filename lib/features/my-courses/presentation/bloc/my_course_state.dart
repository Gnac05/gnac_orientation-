part of 'my_course_bloc.dart';

@immutable
sealed class MyCourseState {}

final class MyCourseInitial extends MyCourseState {
  final List<String> courses;
  final Map<String, dynamic> coursesMap;
  MyCourseInitial({required this.coursesMap, required this.courses});
}

class MyCourseChanged extends MyCourseState {
  final String course;
  MyCourseChanged(this.course);
}

class MyCourseChangedLV1 extends MyCourseState {
  final bool isLV1;
  MyCourseChangedLV1(this.isLV1);
}

class MyCoursesReady extends MyCourseState {
  final List<String> courses;
  final Map<String, dynamic> coursesMap;
  MyCoursesReady({required this.coursesMap, required this.courses});
}

class MyCourseLoading extends MyCourseState {}

class MyCourseAdding extends MyCourseState{}

class MyCourseEditing extends MyCourseState{
  final String course;
  final double note;
  final int coefficient;
  MyCourseEditing({required this.course, required this.note, required this.coefficient});
}

class MyCoursesResults extends MyCourseState {
  final Map<String, dynamic> results;
  MyCoursesResults({required this.results});
}