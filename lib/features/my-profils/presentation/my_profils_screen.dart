import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/features/my-profils/presentation/widgets/my_profils_body.dart';

@RoutePage()
class MyProfilsScreen extends StatelessWidget {
  static const routeName = '/profils';
const MyProfilsScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(context, withIcon: true),
      body: const MyProfilsBody(),
    );
  }
}
