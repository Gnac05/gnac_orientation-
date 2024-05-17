import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gnac_orientation/core/data/user_local_datasource.dart';
import 'package:gnac_orientation/core/domain/model/user.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/presentation/widgets/next_button_widget.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/my-class/presentation/bloc/my_class_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyClassBody extends StatelessWidget {
  const MyClassBody({super.key});

  @override
  Widget build(BuildContext context) {
    final appConstant = AppConstant();
    String myClass = 'A1';
    final myClassBloc = MyClassBloc();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Column(
          children: [
            const InfoWidget(
              title: "Quelle est ta série ?",
              descrition:
                  "On utilise le Guide d'orientation de cette année pour t'aider à mieux choisir ta filière de formation.",
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
                                  ? (appConstant.classList.length / 2).ceil()
                                  : appConstant.classList.length -
                                      (appConstant.classList.length / 2).ceil(),
                              (index) => Expanded(
                                child: RadioListTile<String>(
                                  title: Text(
                                    appConstant.classList[
                                        (appConstant.classList.length / 2)
                                                    .ceil() *
                                                indexColumn +
                                            index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  value: appConstant.classList[
                                      (appConstant.classList.length / 2)
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
              padding: const EdgeInsets.only(top: 20.0, bottom: 40),
              child: NextButtonWidget(
                onPressed: () async {
                  debugPrint('##=======> Ma Série : $myClass');
                  try {
                    UserDatabase userDatabase = UserDatabase.instance;
                    User user = User.fromMap(getIt<AppConstant>().myUserData);
                    await userDatabase.updateUser(
                      User(
                        id: user.id,
                        pseudo: user.pseudo,
                        createdAt: user.createdAt,
                        updatedAt: DateTime.now(),
                        classe: myClass,
                        firstName: user.firstName,
                        picture: user.picture,
                        secondName: user.secondName,
                        fillieres: user.fillieres,
                        notes: user.notes,
                      ),
                    );
                    getIt<AppConstant>().myUserData.addAll({
                      "Série": myClass,
                      'classe': myClass,
                    });
                    if (context.mounted) {
                      AutoRouter.of(context).push(const MyCoursesRoute());
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Votre classe à bien été 👌",
                          ),
                        ),
                      );
                    }
                  } catch (e) {
                    debugPrint("Error : $e");
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Quelque chose s'est mal passée 😢",
                          ),
                        ),
                      );
                    }
                  }
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(25),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       debugPrint('##=======> Ma Série : $myClass');
            //       AutoRouter.of(context).push(
            //         MyCoursesRoute(
            //           myClass: myClass,
            //         ),
            //       );
            //     },
            //     style: const ButtonStyle(
            //         // backgroundColor: AppTheme>().appPrimaryColor,
            //         ),
            //     child: const Text("Continuer"),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
