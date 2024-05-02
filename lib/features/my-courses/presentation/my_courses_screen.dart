import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:gnac_orientation/features/my-courses/presentation/widget/my_courses_body.dart';
import 'package:injectable/injectable.dart';

@RoutePage()
@injectable
class MyCoursesScreen extends StatelessWidget {
  static const routeName = '/courses';
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final  myCourseBloc = MyCourseBloc(myClass: getIt<AppConstant>().myUserData["Série"]);
    return Scaffold(
      body: BlocBuilder<MyCourseBloc, MyCourseState>(
        bloc: myCourseBloc,
        builder: (context, state) {
          if (state is MyCourseLoading) {
            return Center(
              child: CircularProgressIndicator(color: AppTheme().appPrimaryColor, backgroundColor: AppTheme().appSecondaryColor),
            );
          }
          if (state is MyCoursesResults){
            AutoRouter.of(context).push(MyScoresRoute(result: state.results));
          }
          final courses = (state is MyCourseInitial)? state.courses : (state is MyCoursesReady)? state.courses : AppConstant().courseList;
          final coursesMap = (state is MyCourseInitial)? state.coursesMap : (state is MyCoursesReady)? state.coursesMap : {'Error': 'Message'};
          return Scaffold(
            appBar: MyAppBar(context, text: 'Notes', enabledPop: true,),
            body:  MyCoursesBody(
              coursesMap: coursesMap,
              courses: courses,
            
              myCourseBloc: myCourseBloc,
            ),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: (state is MyCourseLoading)? null : () {
            //     myCourseBloc.add(AddCourse());
            //     AutoRouter.of(context).push(
            //       CourseRegisterRoute(
            //           courses: courses,
            //           myCourseBloc: myCourseBloc,
            //           myClass: myClass,
            //           coursesMap:coursesMap, ),
            //     );
            //   },
            //   child: const FaIcon(FontAwesomeIcons.plus, size: 25),
            // ),
          );
        },
      ),
    );
  }
}
