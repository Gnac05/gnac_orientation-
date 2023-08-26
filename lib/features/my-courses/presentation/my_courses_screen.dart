import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:gnac_orientation/features/my-courses/presentation/widget/my_courses_body.dart';

@RoutePage()
class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({Key? key, required this.myClass}) : super(key: key);
  final String myClass;

  @override
  Widget build(BuildContext context) {
    MyCourseBloc myCourseBloc = appConstant.myCourseBloc;
    return BlocBuilder<MyCourseBloc, MyCourseState>(
      bloc: myCourseBloc,
      builder: (context, state) {
        if (state is MyCourseLoading) {
          return Center(
            child: CircularProgressIndicator(color: AppTheme().appPrimaryColor, backgroundColor: AppTheme().appSecondaryColor),
          );
        }
        if (state is MyCoursesResults){
          AppRouter().push(MyScoresRoute(result: state.results));
        }
              final courses = (state is MyCourseInitial)? state.courses : (state is MyCoursesReady)? state.courses : AppConstant().courseList;
        final coursesMap = (state is MyCourseInitial)? state.coursesMap : (state is MyCoursesReady)? state.coursesMap : {'Error': 'Message'};
        return Scaffold(
          appBar: MyAppBar(context, enabledPop: true),
          body:  MyCoursesBody(
            coursesMap: coursesMap,
            courses: courses,
            myClass: myClass,
            myCourseBloc: myCourseBloc,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (state is MyCourseLoading)? null : () {
              myCourseBloc.add(AddCourse());
              AppRouter().push(
                CourseRegisterRoute(
                    courses: courses,
                    myCourseBloc: myCourseBloc,
                    myClass: myClass,
                    coursesMap:coursesMap, ),
              );
            },
            child: const FaIcon(FontAwesomeIcons.plus, size: 25),
          ),
        );
      },
    );
  }
}
