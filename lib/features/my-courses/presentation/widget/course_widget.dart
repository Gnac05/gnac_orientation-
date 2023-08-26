import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({Key? key, required this.course, required this.coef, required this.note, required this.myCourseBloc, required this.courses, required this.myClass, required this.coursesMap}) : super(key: key);
  final String course;
  final int coef;
  final double note;
  final MyCourseBloc myCourseBloc;
  final List<String> courses;
  final String myClass;
  final Map<String, dynamic> coursesMap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.4)),
                child:  Center(
                  child: Text(course, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withOpacity(0.4)),
                child:  Center(child: Text(coef.toString(), overflow: TextOverflow.ellipsis)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.withOpacity(0.4)),
                child:  Center(child: Text(note.toString(), overflow: TextOverflow.ellipsis,)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme().appSecondaryColor!.withOpacity(0.4)),
              child: Center(
                child: InkWell(
                  onTap: () {
                    myCourseBloc.add(EditCourse(course: course, note: note, coefficient: coef));
                    AppRouter().push(CourseRegisterRoute(courses: courses, myCourseBloc: myCourseBloc, myClass: myClass, coursesMap: coursesMap));
                  },
                  child: FaIcon(FontAwesomeIcons.pencil,
                      size: 15, color: AppTheme().appSecondaryColor!),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme().appPrimaryColor!.withOpacity(0.4)),
              child: Center(
                child: InkWell(
                  onTap: () {
                    myCourseBloc.add(DeleteCourse(course: course, lastCourses: courses, lastCoursesMap: coursesMap));
                  },
                  child: FaIcon(FontAwesomeIcons.solidTrashCan,
                      size: 15, color: AppTheme().appPrimaryColor!),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
