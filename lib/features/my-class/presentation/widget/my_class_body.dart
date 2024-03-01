import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/presentation/app_title.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/my-class/presentation/bloc/my_class_bloc.dart';

class MyClassBody extends StatelessWidget {
  const MyClassBody({super.key});

  @override
  Widget build(BuildContext context) {
    String myClass = 'A1';
    final MyClassBloc myClassBloc = MyClassBloc();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Column(
          children: [
            const AppTitle(text: "Ma Série"),
            const Text(
              "Quelle est ta série ? On utilise le Guide d'orientation de cette année pour t'aider à mieux choisir ta filière de formation.",
              overflow: TextOverflow.clip,
            ),
            BlocBuilder<MyClassBloc, MyClassState>(
              bloc: myClassBloc,
              builder: (context, state) {
                if (state is MyClassChanged) {
                  myClass = state.myClass;
                }
                return Container(
                  height: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: AppTheme().appSecondaryColor!,
                        width: 3,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: List.generate(2, (indexColumn) {
                        return Expanded(
                          child: Column(
                            children: List.generate(
                              indexColumn != 1
                                  ? (appConstant.classList.length / 2)
                                      .ceil()
                                  : appConstant.classList.length -
                                      (appConstant.classList.length /
                                              2)
                                          .ceil(),
                              (index) => Expanded(
                                child: RadioListTile<String>(
                                  title: Text(
                                    appConstant.classList[
                                        (appConstant.classList.length /
                                                        2)
                                                    .ceil() *
                                                indexColumn +
                                            index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  value: appConstant.classList[
                                      (appConstant.classList.length /
                                                      2)
                                                  .ceil() *
                                              indexColumn +
                                          index],
                                  groupValue: myClass,
                                  onChanged: (value) {
                                    myClassBloc.add(ChangeMyClass(value!));
                                  },
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('##=======> Ma Série : $myClass');
                  AppRouter().push(
                    MyCoursesRoute(
                      myClass: myClass,
                    ),
                  );
                },
                style: const ButtonStyle(
                    // backgroundColor: AppTheme>().appPrimaryColor,
                    ),
                child: const Text("Continuer"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
