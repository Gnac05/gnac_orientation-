import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gnac_orientation/core/data/user_local_datasource.dart';
import 'package:gnac_orientation/core/domain/model/user.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/presentation/widgets/next_button_widget.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/features/my-class/presentation/my_class_screen.dart';
import 'package:gnac_orientation/features/my-profils/presentation/bloc/my_profile_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateProfilBody extends StatefulWidget {
  const CreateProfilBody({super.key});

  @override
  State<CreateProfilBody> createState() => _CreateProfilBodyState();
}

class _CreateProfilBodyState extends State<CreateProfilBody> {
  final bloc = MyProfileBloc();
  final _profilKey = GlobalKey<FormBuilderState>();
  String? picture;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const InfoWidget(
            title: 'Création d\'un nouveau profil',
            descrition:
                'Veuillez à ce que votre pseudo soit présent, car cela est un champs requis. Les informations comme votre nom et prénom ainsi que la photo son facultative',
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppTheme().red100,
                    ),
                    child: Center(
                      child: BlocBuilder<MyProfileBloc, MyProfileState>(
                        bloc: bloc,
                        builder: (context, state) {
                          if (state is MyProfileLoading) {
                            return const CircularProgressIndicator();
                          }
                          if (state is PictureReadyState) {
                            picture = state.picture;
                            return Container(
                              decoration: BoxDecoration(
                                color: AppTheme().appPrimaryColor,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.file(
                                    File(state.picture),
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            );
                          }
                          return const Icon(
                            Icons.person,
                            size: 150,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: FloatingActionButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 10,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: AppTheme().grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 50.0,
                                  vertical: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            bloc.add(PickImageEvent());
                                          },
                                          icon: FaIcon(
                                            FontAwesomeIcons.camera,
                                            color: AppTheme().appSecondaryColor,
                                          ),
                                        ),
                                        Text(
                                          "Prendre Une\nPhoto",
                                          style: TextStyle(
                                            color: AppTheme().appSecondaryColor,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            bloc.add(TakePictureEvent());
                                          },
                                          icon: FaIcon(
                                            FontAwesomeIcons.image,
                                            color: AppTheme().appSecondaryColor,
                                          ),
                                        ),
                                        Text(
                                          "Choisir Depuis\nGalerie",
                                          style: TextStyle(
                                            color: AppTheme().appSecondaryColor,
                                            fontSize: 14,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    child: const Icon(
                      FontAwesomeIcons.plus,
                    ),
                  ),
                )
              ],
            ),
          ),
          FormBuilder(
            key: _profilKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: FormBuilderTextField(
                    name: 'pseudo',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: "Votre pseudo est requis."),
                    ]),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                      ),
                      labelText: 'Mon Pseudo',
                      labelStyle: TextStyle(
                        color: AppTheme().appSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: FormBuilderTextField(
                    name: 'name',
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                      ),
                      labelText: 'Mon Nom',
                      labelStyle: TextStyle(
                        color: AppTheme().appSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: FormBuilderTextField(
                    name: 'firstName',
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                      ),
                      labelText: 'Mon Prénom',
                      labelStyle: TextStyle(
                        color: AppTheme().appSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 40),
            child: NextButtonWidget(
              onPressed: () async {
                if (_profilKey.currentState!.saveAndValidate()) {
                  try {
                    final pseudo = _profilKey.currentState!.value['pseudo'];
                    final lastName = _profilKey.currentState!.value['name'];
                    final firstName =
                        _profilKey.currentState!.value['firstName'];

                    debugPrint('Picture with : $picture END');
                    debugPrint('Validate with : ');
                    debugPrint(
                        '"pseudo": $pseudo,\n "name": $lastName, \n "firstName": $firstName,');
                        UserDatabase userDatabase = UserDatabase.instance;
                    int myId = await userDatabase.insertUser(
                      User(
                        id: '000',
                        pseudo: pseudo,
                        firstName: firstName,
                        secondName: lastName,
                        createdAt: DateTime.now(),
                        updatedAt: DateTime.now(),
                      ),
                    );

                    getIt<AppConstant>().myUserData.addAll({'id': myId});

                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Profile créer avec success 👌',
                          ),
                        ),
                      );
                      AutoRouter.of(context).pushNamed(MyClassScreen.routeName);
                    }
                  } catch (e) {
                    debugPrint("Error : $e");
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Quelque chose s\'est mal passée 👌',
                          ),
                        ),
                      );
                    }
                  }
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
