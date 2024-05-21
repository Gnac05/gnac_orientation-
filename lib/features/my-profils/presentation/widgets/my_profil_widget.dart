import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/data/user_local_datasource.dart';
import 'package:gnac_orientation/core/domain/model/user.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/core/utils/utils.dart';
import 'package:gnac_orientation/features/my-profils/presentation/bloc/my_profile_bloc.dart';
import 'package:gnac_orientation/features/my-profils/presentation/create_profil_page.dart';

import 'my_profils_body.dart';

class MyProfilWidget extends StatelessWidget {
  final String pseudo;
  final bool willNewProfil;
  final String? picture;
  final User? user;
  const MyProfilWidget({
    super.key,
    this.pseudo = "pseudo",
    this.willNewProfil = false,
    this.picture,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (willNewProfil == true || user == null) {
          getIt<AppConstant>().myUserData.clear();
          AutoRouter.of(context).pushNamed(CreateProfilPage.routeName);
        } else {
          getIt<AppConstant>().myUserData.clear();
          getIt<AppConstant>().myUserData.addAll(user!.toUserDataMap());
          if (user!.classe == null) {
            context.pushRoute(const MyClassRoute());
          } else {
            if (user!.notes == null) {
              context.pushRoute(const MyCoursesRoute());
            } else {
              if (user!.careers == null) {
                context.pushRoute(const CareersRoute());
              } else {
                context.pushRoute(const SectorsRoute());
              }
            }
          }
        }
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppTheme().red100,
              image: picture != null
                  ? DecorationImage(
                      image: Image.file(File(picture!)).image,
                    )
                  : null,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(willNewProfil ? 7 : 0),
                  child: Icon(
                    willNewProfil
                        ? Icons.person_add_alt_1_rounded
                        : Icons.person,
                    size: willNewProfil ? 90 : 100,
                  ),
                ),
                if (!willNewProfil)
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(0.45),
                      ),
                      child: IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Suppression de profil"),
                              content: const Text(
                                  "Voulez vous supprimer ce profil ?"),
                              actions: [
                                ElevatedButton(
                                  onPressed: () => context.maybePop(),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                      AppTheme().grey!,
                                    ),
                                  ),
                                  child: const Text(
                                    "Non",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    try {
                                      UserDatabase userDatabase =
                                          UserDatabase.instance;
                                      await userDatabase.deleteUser(user!.id);
                                      if (context.mounted) {
                                        context.maybePop();
                                        bloc.add(GetUsersEvent());
                                        showSnackBar(
                                          context: context,
                                          success: true,
                                          msg: "$pseudo a bien été supprimer",
                                        );
                                      }
                                    } catch (e) {
                                      debugPrint("Error : $e");
                                      if (context.mounted) {
                                        showSnackBar(context: context);
                                      }
                                    }
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                      AppTheme().appSecondaryColor!,
                                    ),
                                  ),
                                  child: const Text(
                                    "Oui",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 15,
                          color: AppTheme().appSecondaryColor,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          Expanded(
            child: Text(
              willNewProfil ? 'Nouveau profil' : pseudo,
              style: TextStyle(
                color: AppTheme().appSecondaryColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
