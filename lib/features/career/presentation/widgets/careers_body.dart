import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/presentation/widgets/next_button_widget.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';

class CareersBody extends StatefulWidget {
  const CareersBody({super.key});
  @override
  State<CareersBody> createState() => _CareersBodyState();
}

class _CareersBodyState extends State<CareersBody> {
  List<String> carrerList = ['empty'];
  String myClass = getIt<AppConstant>().myUserData["Série"];
  @override
  void initState() {
    carrerList = AppConstant.carrerList[myClass] ?? [];
    super.initState();
  }

  final _careersKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          InfoWidget(
            title: 'Qui aimeriez vous devenir demain ?',
            descrition:
                'Veuillez choisir de préférence les (02) deux ou (03) trois carrières qui vous passionne le plus. Bien vous pouvez en choisi plus, mais pour une meilleur utilisation optimale de ${AppConstant().appName}, choisissez au plus 3.',
          ),
          FormBuilder(
            key: _careersKey,
            child: Column(
              children: [
                FormBuilderCheckboxGroup<String>(
                  name: "careers",
                  options: List.generate(
                    carrerList.length,
                    (index) => FormBuilderFieldOption(
                      value: carrerList[index],
                      child: Text(
                        carrerList[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(
                        errorText: "Votre choix est requis",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: NextButtonWidget(
              onPressed: () {
                if (_careersKey.currentState!.saveAndValidate()) {
                  debugPrint(
                      _careersKey.currentState!.value.keys.toList().toString());
                  final careers = _careersKey.currentState!.value.entries
                      .toList().first;

                  debugPrint(careers.toString());
                  getIt<AppConstant>().myUserData.addAll({careers.key : careers.value});
                  AutoRouter.of(context).push(
                    const SectorsRoute(),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
