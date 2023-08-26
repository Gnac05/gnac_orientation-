import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/features/my-scores/presentation/widgets/my_scores_body.dart';

@RoutePage()
class MyScoresScreen extends StatelessWidget {
  const MyScoresScreen({Key? key, required this.result}) : super(key: key);
  final Map<String, dynamic> result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, text: "Mes Résultats", enabledPop: true),
      body: MyScoresBody(
        result: result,
      ),
    );
  }
}
