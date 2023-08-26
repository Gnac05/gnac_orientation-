import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';

class MyAppBar extends AppBar {
  final BuildContext context;
  final String? text;
  final bool enabledPop;

  MyAppBar(this.context, {this.text, this.enabledPop = false, super.key})
      : super(
          title: Text(
            text ?? AppConstant().appName,
            style: TextStyle(
                color: AppTheme().appSecondaryColor, fontSize: 25),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.ellipsisVertical,
                color: AppTheme().appSecondaryColor,
              ),
            ),
          ],
          leading:enabledPop? IconButton(
            onPressed: () {
              AppRouter().pop();
            },
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: AppTheme().appSecondaryColor,
            ),
          ) : null,
        );
}
