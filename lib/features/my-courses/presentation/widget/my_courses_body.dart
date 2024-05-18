import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gnac_orientation/core/data/user_local_datasource.dart';
import 'package:gnac_orientation/core/domain/model/user.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/presentation/widgets/next_button_widget.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/core/utils/utils.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyCoursesBody extends StatefulWidget {
  const MyCoursesBody(
      {super.key,
      required this.coursesMap,
      required this.myCourseBloc,
      required this.courses});
  final Map<String, dynamic> coursesMap;
  final MyCourseBloc myCourseBloc;
  final List<String> courses;

  @override
  State<MyCoursesBody> createState() => _MyCoursesBodyState();
}

class _MyCoursesBodyState extends State<MyCoursesBody> {
  String myClass = getIt<AppConstant>().myUserData["Série"];
  final _notesKey = GlobalKey<FormBuilderState>();
  List<Widget> myChildren = [];
  @override
  Widget build(BuildContext context) {
    debugPrint("coursesMap: ${widget.coursesMap}");
    if (widget.coursesMap != {} && widget.coursesMap['Error'] != 'Message') {
      widget.coursesMap.forEach((key, value) {
        myChildren.add(Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme().greyMedium,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: key.contains('LV')
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  '$key : ',
                                  style: TextStyle(
                                    color: AppTheme().appPrimaryColor,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: FormBuilderDropdown(
                                  name: '${key}M',
                                  validator: FormBuilderValidators.required(
                                      errorText: 'Obligatoire'),
                                  decoration: const InputDecoration(
                                    hintText: "Matière",
                                  ),
                                  items: [
                                    DropdownMenuItem(
                                      value: 'ANGLAIS',
                                      child: Text(
                                        'ANGLAIS',
                                        style: TextStyle(
                                          color: AppTheme().appSecondaryColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    DropdownMenuItem(
                                      value: 'ALLEMAND',
                                      child: Text(
                                        'ALLEMAND',
                                        style: TextStyle(
                                          color: AppTheme().appSecondaryColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    DropdownMenuItem(
                                      value: 'ESPAGNOL',
                                      child: Text(
                                        'ESPAGNOL',
                                        style: TextStyle(
                                          color: AppTheme().appSecondaryColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        : Center(
                            child: Text(
                              key,
                              style: TextStyle(
                                color: AppTheme().appPrimaryColor,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme().greyMedium,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Center(
                      child: Text(
                        value['Coefficient'].toString(),
                        style: TextStyle(
                          color: AppTheme().appPrimaryColor,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: SizedBox(
                  height: 50,
                  child: FormBuilderTextField(
                    name: key,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                        errorText: 'Requis',
                      ),
                    ]),
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(','),
                      FilteringTextInputFormatter.deny('-'),
                      FilteringTextInputFormatter.deny(' '),
                    ],
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: AppTheme().appSecondaryColor,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Note',
                      hintStyle: TextStyle(
                        color: AppTheme().appSecondaryColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: AppTheme().greyMedium!,
                        ),
                      ),
                      contentPadding: const EdgeInsets.only(
                        left: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
            // CourseWidget(
            //   course: key,
            //   coef: value['Coefficient'],
            //   note: value['Note'],
            //   courses: courses,
            //   coursesMap: coursesMap,
            //   myClass: myClass,
            //   myCourseBloc: myCourseBloc,
            // ),
            );
      });
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoWidget(
              title:
                  'Quelles notes t\'as obtenu lors de la phase écrite de ton BAC $myClass ?',
              descrition:
                  "Veuillez entrer toutes vos notes, car toutes ces notes sont requises. Je vous pris d'entrer vos réelles notes.",
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Matières',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppTheme().appSecondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Coef.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppTheme().appSecondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Notes',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppTheme().appPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            FormBuilder(
              key: _notesKey,
              child: Column(children: myChildren),
            ),
            // const AppTitle(text: 'Mes Matières'),
            // const Text(
            //   "Veuiller taper sur le bouton plus en bas à droite pour ajouter une matière !!!",
            //   textAlign: TextAlign.center,
            //   overflow: TextOverflow.clip,
            // ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: NextButtonWidget(
                onPressed: () async {
                  if (_notesKey.currentState!.saveAndValidate()) {
                    if (myClass.contains("A")) {
                      final key1 = _notesKey.currentState!.value["LV1M"];
                      final key2 = _notesKey.currentState!.value["LV2M"];
                      if (key1 == key2) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "LV1 doit être différent de LV2",
                            ),
                          ),
                        );
                      } else {
                        widget.coursesMap.forEach((key, value) {
                          widget.coursesMap[key]["Note"] = double.parse(
                              _notesKey.currentState!.value[key].toString());
                        });
                        // LV1M or LV2M
                        final map1 = widget.coursesMap["LV1"];
                        final map2 = widget.coursesMap["LV2"];
                        Map<String, dynamic> coursesMap = widget.coursesMap;
                        coursesMap[key1] = map1;
                        coursesMap[key2] = map2;

                        debugPrint(
                          coursesMap.toString(),
                        );

                        await updateNotes(coursesMap, context);

                        getIt<AppConstant>()
                            .myUserData
                            .addAll({"Matières": coursesMap});
                        if (context.mounted) {
                          AutoRouter.of(context).push(
                            const CareersRoute(),
                          );
                        }
                      }
                    } else if (myClass == "B") {
                      widget.coursesMap.forEach((key, value) {
                        widget.coursesMap[key]["Note"] = double.parse(
                            _notesKey.currentState!.value[key].toString());
                      });

                      final key1 = _notesKey.currentState!.value["LV1M"];
                      final map1 = widget.coursesMap["LV1"];
                      Map<String, dynamic> coursesMap = widget.coursesMap;
                      coursesMap[key1] = map1;
                      debugPrint(
                        coursesMap.toString(),
                      );
                      await updateNotes(coursesMap, context);

                      getIt<AppConstant>()
                          .myUserData
                          .addAll({"Matières": coursesMap});
                      if (context.mounted) {
                        AutoRouter.of(context).push(
                          const CareersRoute(),
                        );
                      }
                    } else {
                      // Other class
                      widget.coursesMap.forEach((key, value) {
                        widget.coursesMap[key]["Note"] = double.parse(
                            _notesKey.currentState!.value[key].toString());
                      });

                      debugPrint(
                        widget.coursesMap.toString(),
                      );
                      await updateNotes(widget.coursesMap, context);

                      getIt<AppConstant>()
                          .myUserData
                          .addAll({"Matières": widget.coursesMap});
                      if (context.mounted) {
                        AutoRouter.of(context).push(
                          const CareersRoute(),
                        );
                      }
                    }

                    // myCourseBloc.add(ResultsCourses(userData: coursesMap));
                  }
                },
              ),
              // ElevatedButton(
              //   onPressed: coursesMap.keys.toList().length <= 3
              //       ? null
              //       : () {
              //           myCourseBloc.add(ResultsCourses(userData: coursesMap));
              //         },
              //   child: const Text("Continuer"),
              // ),
            )
          ],
        ),
      ),
    );
  }
}

Future updateNotes(Map<String, dynamic> notes, BuildContext context) async {
  int id = getIt<AppConstant>().myUserData['id'];
  UserDatabase userDatabase = UserDatabase.instance;
  User? user = await userDatabase.getUser(id);
  if (user != null) {
    user.notes = notes;
    user.updatedAt = DateTime.now();
    await userDatabase.updateUser(user);
    if (context.mounted) {
      showSnackBar(
        context: context,
        success: true,
        msg: "Vos notes ont bien été sauvegarder",
      );
    }
  } else {
    debugPrint(
        "###################### Error : User Not Found ################################");
    if (context.mounted) {
      showSnackBar(
        context: context,
      );
    }
  }
}
