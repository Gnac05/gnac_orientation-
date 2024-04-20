import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/presentation/widgets/next_button_widget.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';

class CareersBody extends StatefulWidget {
  const CareersBody({super.key, required this.carrerList});
  final List<String> carrerList;
  @override
  State<CareersBody> createState() => _CareersBodyState();
}

class _CareersBodyState extends State<CareersBody> {
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
                    widget.carrerList.length,
                    (index) => FormBuilderFieldOption(
                      value: widget.carrerList[index],
                      child: Text(
                        widget.carrerList[index],
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
                  debugPrint(_careersKey.currentState!.value.entries
                      .toList()
                      .toString());
                  AutoRouter.of(context).push(const SectorsRoute());
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
