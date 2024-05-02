part of 'my_course_bloc.dart';

@immutable
sealed class MyCourseEvent {}

class ChangeCourse extends MyCourseEvent{
  final String course;
  ChangeCourse(this.course);
}

class ChangeLV1 extends MyCourseEvent{
  final bool isLV1;
  ChangeLV1(this.isLV1);
}

class RegisterCourse extends MyCourseEvent{
  final String course;
  final int coefficient;
  final double note;
  final List<String> lastCourses;
  final Map<String, dynamic> lastCoursesMap;
  RegisterCourse({required this.course, required this.coefficient, required this.note, required this.lastCourses, required this.lastCoursesMap});
}

class UpdateCourse extends MyCourseEvent{
  final String course;
  final int coefficient;
  final double note;
  final List<String> lastCourses;
  final Map<String, dynamic> lastCoursesMap;
  UpdateCourse({required this.course, required this.coefficient, required this.note, required this.lastCourses, required this.lastCoursesMap});
}

class DeleteCourse extends MyCourseEvent{
  final String course;
  final List<String> lastCourses;
  final Map<String, dynamic> lastCoursesMap;
  DeleteCourse({required this.course, required this.lastCourses, required this.lastCoursesMap});
}

class AddCourse extends MyCourseEvent{}

class EditCourse extends MyCourseEvent{
  final String course;
  final double note;
  final int coefficient;
  EditCourse({required this.course, required this.note, required this.coefficient});
}

class ResultsCourses extends MyCourseEvent{
  final Map<String, dynamic> userData;
  final String myClass;

  ResultsCourses({required this.userData, required this.myClass});
}
