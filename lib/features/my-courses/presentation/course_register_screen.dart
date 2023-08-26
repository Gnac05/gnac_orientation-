import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_register_body.dart';

@RoutePage()
class CourseRegisterScreen extends StatelessWidget {
  const CourseRegisterScreen(
      {Key? key, required this.courses, required this.myCourseBloc, required this.myClass, required this.coursesMap})
      : super(key: key);
  final List<String> courses;
  final MyCourseBloc myCourseBloc;
  final String myClass;
  final Map<String, dynamic> coursesMap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, text: "Matière", enabledPop: true,),
      body: CourseRegisterBody(
        myClass: myClass,
        courses: courses,
        coursesMap: coursesMap,
        myCourseBloc: myCourseBloc,
      ),
    );
  }
}
