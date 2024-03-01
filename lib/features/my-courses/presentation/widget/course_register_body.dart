import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/presentation/app_title.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CourseRegisterBody extends StatefulWidget {
  const CourseRegisterBody(
      {super.key,
      required this.courses,
      required this.myCourseBloc,
      required this.myClass,
      required this.coursesMap});
  final List<String> courses;
  final MyCourseBloc myCourseBloc;
  final String myClass;
  final Map<String, dynamic> coursesMap;

  @override
  State<CourseRegisterBody> createState() => _CourseRegisterBodyState();
}

class _CourseRegisterBodyState extends State<CourseRegisterBody> {
  
  String myCourse = "ALLEMAND";
  TextEditingController coefController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  String? coef;
  String? note;
  bool isLv1 = false;
  @override
  void initState() {
    myCourse = widget.courses.first;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyCourseBloc, MyCourseState>(
      bloc: widget.myCourseBloc,
      builder: (context, state) {
        if (state is MyCourseChanged) {
          debugPrint('####======> MyCourseChanged');
          myCourse = state.course;
          widget.myCourseBloc.add(AddCourse());
        }
        if (state is MyCourseChangedLV1) {
          debugPrint('####======> MyCourseChangedLV1');
          isLv1 = state.isLV1;
          widget.myCourseBloc.add(AddCourse());
        }
        if (state is MyCourseEditing) {
          note = state.note.toString();
          coef = state.coefficient.toString();
        }
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AppTitle(text: "Nom de la Matière"),
              ),
              if (widget.myClass.contains('A') &&
                  state is! MyCourseEditing) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: SwitchListTile(
                    value: isLv1,
                    onChanged: (value) {
                      widget.myCourseBloc.add(ChangeLV1(value));
                    },
                    title: const Text(
                      'LV1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                )
              ],
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppTheme().appSecondaryColor!,
                      width: 3,
                    ),
                  ),
                  child: (state is MyCourseEditing)
                      ? RadioListTile(
                          value: state.course,
                          groupValue: state.course,
                          onChanged: (value) {},
                          title: Text(state.course),
                        )
                      : Column(
                          children: List.generate(
                            widget.courses.length,
                            (index) => RadioListTile(
                              value: widget.courses[index],
                              groupValue: myCourse,
                              title: Text(widget.courses[index]),
                              onChanged: (value) {
                                widget.myCourseBloc.add(ChangeCourse(value!));
                              },
                            ),
                          ),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: coefController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      // if (state is MyCourseAdding) {

                      //   widget.myCourseBloc.add(AddCourse());
                      // } else if (state is MyCourseEditing) {
                      //   widget.myCourseBloc.add(EditCourse(course: state.course, note: state.note, coefficient: state.coefficient));
                      // }
                    });
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    hintText: "Coefficent ${coef??''}",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: noteController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      // if (state is MyCourseAdding) {
                      //   widget.myCourseBloc.add(AddCourse());
                      // } else if (state is MyCourseEditing) {
                      //   widget.myCourseBloc.add(EditCourse(course: state.course, note: state.note, coefficient: state.coefficient));
                      // }
                    });
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(','),
                    FilteringTextInputFormatter.deny('-'),
                    FilteringTextInputFormatter.deny(' ')
                  ],
                  decoration: InputDecoration(
                    hintText: "Note ${note??''}",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed:
                      (coefController.text == '' || noteController.text == '')
                          ? null
                          : () {
                              try {
                                if (state is MyCourseAdding) {
                                  debugPrint('####======> MyCourseAdding');
                                  widget.myCourseBloc.add(RegisterCourse(
                                      course: isLv1 ? "LV1" : myCourse,
                                      coefficient:
                                          int.parse(coefController.text.trim()),
                                      note: double.parse(noteController.text),
                                      lastCourses: widget.courses,
                                      lastCoursesMap: widget.coursesMap));
                                  AutoRouter.of(context).pop();
                                } else if (state is MyCourseEditing) {
                                  debugPrint('MyCourseEditing <======####');
                                  widget.myCourseBloc.add(UpdateCourse(
                                      course: state.course,
                                      coefficient:
                                          int.parse(coefController.text.trim()),
                                      note: double.parse(noteController.text),
                                      lastCourses: widget.courses,
                                      lastCoursesMap: widget.coursesMap));
                                  AutoRouter.of(context).pop();
                                }
                              } catch (e) {
                                debugPrint("Error : $e");
                              }
                            },
                  child: const Text("Continuer"),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
