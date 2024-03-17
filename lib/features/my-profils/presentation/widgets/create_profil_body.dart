import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/presentation/widgets/next_button_widget.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/features/my-class/presentation/my_class_screen.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateProfilBody extends StatefulWidget {
  const CreateProfilBody({super.key});

  @override
  State<CreateProfilBody> createState() => _CreateProfilBodyState();
}

class _CreateProfilBodyState extends State<CreateProfilBody> {
  final _profilKey = GlobalKey<FormBuilderState>();
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
                  padding: const EdgeInsets.only(bottom: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppTheme().red100,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.person,
                      size: 150,
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
                                          onPressed: () {},
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
                                          onPressed: () {},
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
              onPressed: () {
                if (_profilKey.currentState!.saveAndValidate()) {
                  debugPrint('Validate with : ');
                  debugPrint(
                      '"pseudo": ${_profilKey.currentState!.value['pseudo']},\n "name": ${_profilKey.currentState!.value['name']}, \n "firstName": ${_profilKey.currentState!.value['firstName']},');
                  AutoRouter.of(context).pushNamed(MyClassScreen.routeName);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
