import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/features/my-class/presentation/widget/my_class_body.dart';

@RoutePage()
class MyClassScreen extends StatelessWidget {
  static const routeName = '/class';
const MyClassScreen({ super.key });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(context, withIcon: true,),
      body: const MyClassBody(),
    );
  }
}