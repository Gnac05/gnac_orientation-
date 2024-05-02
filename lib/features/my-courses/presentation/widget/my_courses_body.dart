import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/app_title.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_widget.dart';

class MyCoursesBody extends StatelessWidget {
  const MyCoursesBody(
      {super.key,
      required this.coursesMap,
      required this.myCourseBloc,
      required this.myClass,
      required this.courses});
  final Map<String, dynamic> coursesMap;
  final MyCourseBloc myCourseBloc;
  final String myClass;
  final List<String> courses;

  @override
  Widget build(BuildContext context) {
    List<Widget> myChildren = [];
    debugPrint("coursesMap: $coursesMap");
    if (coursesMap != {} && coursesMap['Error'] != 'Message') {
      coursesMap.forEach((key, value) {
        myChildren.add(
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
    return Center(
      child: SingleChildScrollView(
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: myChildren,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: coursesMap.keys.toList().length <= 3
                      ? null
                      : () {
                          // final Map<String, Object> userData = {
                          //   "Matières": coursesMap,
                          //   "Série": myClass,
                          // };
                          myCourseBloc.add(ResultsCourses(
                            userData: AppConstant().userData,
                            myClass: myClass,
                          ));
                        },
                  child: const Text("Continuer"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
