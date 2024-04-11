import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/core/presentation/widgets/animate_floating_action_button.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/career/presentation/widgets/sector_body.dart';

@RoutePage()
class SectorsPage extends StatelessWidget {
  static const String routeName = '/sector';
  const SectorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context,
        withIcon: true,
      ),
      body: const SectorBody(),
      floatingActionButton:  AnimateFloatingActionButton(
        onPressed: ()=> context.pushRoute(const ChatRoute())
      ),
    );
  }
}
