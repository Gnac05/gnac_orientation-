import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/features/career/presentation/widgets/careers_body.dart';

@RoutePage()
class CareersPage extends StatelessWidget {
  static const String routeName = "/careers";
  const CareersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context,
        text: 'Carrière Envisagé',
        enabledPop: true,
      ),
      body: const CareersBody(),
    );
  }
}
