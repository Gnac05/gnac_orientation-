import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/app_image.dart';
import 'package:gnac_orientation/features/my-scores/presentation/bloc/myscore_bloc.dart';
import 'package:gnac_orientation/features/my-scores/presentation/widgets/table_container.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyScoresBody extends StatefulWidget {
  const MyScoresBody({super.key, required this.result});
  final Map<String, dynamic> result;

  @override
  State<MyScoresBody> createState() => _MyScoresBodyState();
}

class _MyScoresBodyState extends State<MyScoresBody> {
  // int indexSelected = 0;
  List<String> universities = [];
  @override
  void initState() {
    super.initState();
    universities = widget.result.keys.toList();
    // indexSelected = 0;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, List<Widget>> children = {};
    widget.result.forEach((keyU, university) {
      List<Widget> schoolList = [];
      university.forEach((keyS, school) {
        List<Widget> filiereList = [];
        double heightFilier = 0.0;
        school.forEach((keyF, filiere) {
          double height = 0.0;
          List<String> becomes = filiere["Métiers"];
          for (String become in becomes) {
            if (become.length >= 20) {
              height += 35 * (become.length / 28).ceilToDouble();
            } else {
              height += 25;
            }
          }

          // Height Adaptative
          if (becomes.length >= 15) {
            height -= 25 * (becomes.length / 5).ceilToDouble();
          } else if (becomes.length >= 10) {
            height -= 20 * (becomes.length / 5).ceilToDouble();
          }
          else if (becomes.length >= 5) {
            height -= 8 * (becomes.length / 5).ceilToDouble();
          }

          double temp = 0.0;
          if (keyF.length >= 16) {
            temp += 30 * (keyF.length / 16).ceilToDouble();
          }
          if (temp > height) {
            height = temp;
          }
          heightFilier += height;
          filiereList.add(Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 4,
                  child: TableContainer(
                      height: height,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          keyF,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppTheme().appSecondaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ))),
              Expanded(
                  child: TableContainer(
                      height: height,
                      withColor: true,
                      child: Text(
                        filiere["Bourse"].toString(),
                        style: TextStyle(
                          color: AppTheme().appPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ))),
              Expanded(
                  child: TableContainer(
                      height: height,
                      withColor: true,
                      child: Text(
                        filiere["Aide"].toString(),
                        style: TextStyle(
                          color: AppTheme().appPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ))),
              Expanded(
                  flex: 2,
                  child: TableContainer(
                      height: height,
                      withColor: true,
                      child: Text(
                        filiere["Moyenne"].toString(),
                        style: TextStyle(
                          color: AppTheme().appPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ))),
              Expanded(
                  flex: 5,
                  child: TableContainer(
                      height: height,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            filiere["Métiers"].length,
                            (index) => Text(
                              "${index + 1}. ${filiere["Métiers"][index]}",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: AppTheme().appSecondaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ))),
            ],
          ));
        });

        schoolList.add(Row(
          children: [
            Expanded(
              flex: 3,
              child: TableContainer(
                height: heightFilier,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    keyS,
                    style: TextStyle(
                      color: AppTheme().appSecondaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: Column(
                children: filiereList,
              ),
            ),
          ],
        ));
      });
      children[keyU] = schoolList;
    });

    // widget.result.forEach((keyU, university) {
    //   children.add(Text(
    //     keyU,
    //     style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
    //   ));
    //   List<Widget> schoolList = [];
    //   university.forEach((keyS, school) {
    //     schoolList.add(Padding(
    //       padding: const EdgeInsets.only(top: 16),
    //       child: Text(
    //         keyS,
    //         overflow: TextOverflow.clip,
    //         style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    //       ),
    //     ));
    //     List<Widget> filiereList = [];
    //     school.forEach((keyF, filiere) {
    //       filiereList.add(Padding(
    //         padding: const EdgeInsets.only(top: 5),
    //         child: Text(
    //           keyF,
    //           overflow: TextOverflow.clip,
    //           style: const TextStyle(fontSize: 15),
    //         ),
    //       ));
    //       filiereList.add(Container(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(16),
    //           border: Border.all(
    //             color: AppTheme().appSecondaryColor!,
    //             width: 2,
    //           ),
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Column(
    //             children: [
    //               Text(
    //                 filiere["Moyenne"],
    //                 overflow: TextOverflow.clip,
    //                 style: const TextStyle(
    //                     fontWeight: FontWeight.bold, fontSize: 20),
    //               ),
    //               Text(
    //                 'Bourse : ${filiere["Bourse"]}',
    //                 style: const TextStyle(fontSize: 17),
    //               ),
    //               Text(
    //                 'Aide : ${filiere["Aide"]}',
    //                 style: const TextStyle(fontSize: 17),
    //               ),
    //               ExpansionTile(
    //                 textColor: Colors.black,
    //                 title: const Text(
    //                   "Débouchés",
    //                   style: TextStyle(fontSize: 17),
    //                 ),
    //                 children: List.generate(
    //                   filiere["Métiers"].length,
    //                   (index) => Text(
    //                     "${index + 1}. ${filiere["Métiers"][index]}",
    //                     textAlign: TextAlign.start,
    //                   ),
    //                 ),
    //               )
    //             ],
    //           ),
    //         ),
    //       ));
    //     });
    //     schoolList.add(Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(16),
    //         border: Border.all(
    //           color: AppTheme().appPrimaryColor!,
    //           width: 3,
    //         ),
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Column(
    //           children: filiereList,
    //         ),
    //       ),
    //     ));
    //   });
    //   children.add(Container(
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(16),
    //       border: Border.all(
    //         color: AppTheme().appSecondaryColor!,
    //         width: 4,
    //       ),
    //     ),
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 16),
    //       child: Column(
    //         children: schoolList,
    //       ),
    //     ),
    //   ));
    // });
    final bloc = MyScoreBloc();
    return BlocBuilder<MyScoreBloc, MyScoreState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is MyScoreInitial) {
            bloc.add(
              MyScoreUniversityEvent(
                university: 0,
              ),
            );
            return const CircularProgressIndicator();
          } else if (state is MyScoreUniversityState) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: AppTheme().appSecondaryColor,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          universities.length,
                          (index) => GestureDetector(
                            onTap: () {
                              if (state.university != index) {
                                bloc.add(
                                  MyScoreUniversityEvent(
                                    university: index,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              color: state.university == index
                                  ? AppTheme().red100
                                  : Colors.white,
                              child: Column(
                                children: [
                                  Image.asset(
                                    AppImage.logoUniversity(
                                        universities[index]),
                                    height: 45,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Image.asset(
                                      AppImage.logo,
                                      height: 45,
                                    ),
                                  ),
                                  Text(
                                    universities[index],
                                    style: TextStyle(
                                      color: AppTheme().appSecondaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Column(
                    children: [
                      // En tête du tableau
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: TableContainer(
                                    child: Text(
                                  'Ecole/Faculté',
                                  style: TextStyle(
                                    color: AppTheme().appSecondaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ))),
                            Expanded(
                                flex: 4,
                                child: TableContainer(
                                    child: Text(
                                  'Filière',
                                  style: TextStyle(
                                    color: AppTheme().appSecondaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ))),
                            Expanded(
                                child: TableContainer(
                                    withColor: true,
                                    child: Text(
                                      'Brse',
                                      style: TextStyle(
                                        color: AppTheme().appPrimaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ))),
                            Expanded(
                                child: TableContainer(
                                    withColor: true,
                                    child: Text(
                                      'Aide',
                                      style: TextStyle(
                                        color: AppTheme().appPrimaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ))),
                            Expanded(
                                flex: 2,
                                child: TableContainer(
                                    withColor: true,
                                    child: Text(
                                      'Moyenne',
                                      style: TextStyle(
                                        color: AppTheme().appPrimaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ))),
                            Expanded(
                                flex: 5,
                                child: TableContainer(
                                    child: Text(
                                  'Débouché',
                                  style: TextStyle(
                                    color: AppTheme().appSecondaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ))),
                          ],
                        ),
                      ),
                      // Contenu
                      Expanded(
                        flex: 8,
                        child: SingleChildScrollView(
                          child: Column(
                            children: children[universities[state.university]]!,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SingleChildScrollView(
                //   physics: const BouncingScrollPhysics(),
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                //     child: Column(
                //       children: children,
                //     ),
                //   ),
                // ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
