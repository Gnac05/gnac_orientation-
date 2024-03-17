import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/presentation/widgets/next_button_widget.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';

class CareersBody extends StatefulWidget {
const CareersBody({ super.key });

  @override
  State<CareersBody> createState() => _CareersBodyState();
}

class _CareersBodyState extends State<CareersBody> {
  final _careersKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
        child: Column(
          children: [
            InfoWidget(title: 'Qui aimeriez vous devenir demain ?', descrition: 'Veuillez choisir de préférence les (02) deux ou (03) trois carrières qui vous passionne le plus. Bien vous pouvez en choisi plus, mais pour une meilleur utilisation optimale de ${AppConstant().appName}, choisissez au plus 3.'),
            FormBuilder(
              key: _careersKey,
              child: Column(
              children: [
                FormBuilderCheckboxGroup<int>(name: "careers", options: 
                  List.generate(10, (index) => FormBuilderFieldOption(value: index, child: Text("Carrière possible ${index +1}", style: const TextStyle(fontSize: 16),),),),
                )
              ],
            ),),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: NextButtonWidget(
                onPressed: () {
                if(_careersKey.currentState!.saveAndValidate()){
                  debugPrint(_careersKey.currentState!.value.keys.toList().toString());
                  debugPrint(_careersKey.currentState!.value.entries.toList().toString());
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