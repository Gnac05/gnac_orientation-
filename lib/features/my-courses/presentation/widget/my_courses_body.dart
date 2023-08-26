import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/app_title.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_widget.dart';

class MyCoursesBody extends StatelessWidget {
  const MyCoursesBody({Key? key, required this.coursesMap, required this.myCourseBloc, required this.myClass, required this.courses}) : super(key: key);
  final Map<String, dynamic> coursesMap;
  final MyCourseBloc myCourseBloc;
  final String myClass;
  final List<String> courses;

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [];
    debugPrint("coursesMap: $coursesMap");
    if (coursesMap != {} && coursesMap['Error']!= 'Message' ) {
      coursesMap.forEach((key, value) {
      _children.add(
        CourseWidget(
          course: key,
          coef: value['Coefficient'],
          note: value['Note'],
          courses: courses, 
          coursesMap: coursesMap,
          myClass: myClass, 
          myCourseBloc: myCourseBloc,
        ),
      );
    });
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppTitle(text: 'Mes Matières'),
            const Text(
              "Veuiller taper sur le bouton plus en bas à droite pour ajouter une matière !!!",
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
            Column(children: _children),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: coursesMap.keys.toList().length <= 3 ? null : () {
                  myCourseBloc.add(ResultsCourses(userData: coursesMap));
                },
                child: const Text("Continuer"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
