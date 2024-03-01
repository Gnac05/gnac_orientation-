import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/features/my-scores/domain/reposirtory/algo.dart';

part 'my_course_event.dart';
part 'my_course_state.dart';

@injectable
class MyCourseBloc extends Bloc<MyCourseEvent, MyCourseState> {
  MyCourseBloc()
      : super(
          MyCourseInitial(
            courses: AppConstant().courseList,
            coursesMap: const {'Error': 'Message'},
          ),
        ) {
    on<MyCourseEvent>(myCourse);
  }
  myCourse(event, emit) async {
    if (event is ChangeCourse) {
      emit(MyCourseChanged(event.course));
    } else if (event is ChangeLV1) {
      emit(MyCourseChangedLV1(event.isLV1));
    } else if (event is AddCourse) {
      emit(MyCourseAdding());
    } else if (event is EditCourse) {
      emit(MyCourseEditing(
          course: event.course,
          note: event.note,
          coefficient: event.coefficient));
    } else if (event is RegisterCourse) {
      var courses = event.lastCourses;
      courses.remove(event.course);
      if (event.lastCoursesMap["Error"] == "Message") {
        Map<String, dynamic> coursesMap = {
          event.course: {"Note": event.note, "Coefficient": event.coefficient}
        };
        debugPrint('####===> CoursesMap : $coursesMap');
        emit(MyCoursesReady(coursesMap: coursesMap, courses: courses));
      } else {
        Map<String, dynamic> coursesMap = event.lastCoursesMap;
        coursesMap.addAll({
          event.course: {"Note": event.note, "Coefficient": event.coefficient}
        });
        debugPrint('####===> CoursesMap : $coursesMap');
        emit(MyCoursesReady(coursesMap: coursesMap, courses: courses));
      }
    } else if (event is DeleteCourse) {
      var courses = event.lastCourses;
      var coursesMap = event.lastCoursesMap;
      courses.add(event.course);
      coursesMap.remove(event.course);
      emit(MyCoursesReady(coursesMap: coursesMap, courses: courses));
    } else if (event is UpdateCourse) {
      var coursesMap = event.lastCoursesMap;
      coursesMap.remove(event.course);
      coursesMap.addAll({
        event.course: {"Note": event.note, "Coefficient": event.coefficient}
      });
      emit(MyCoursesReady(coursesMap: coursesMap, courses: event.lastCourses));
    } else if (event is ResultsCourses) {
      emit(MyCourseLoading());
      var data = AppConstant().data;
      var results = await MyAlgorithm()
          .gnacOrientationAlgo(userData: event.userData, data: data);
      emit(MyCoursesResults(results: results));
    }
  }
}
