import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyAppBar extends AppBar {
  final BuildContext context;
  final String? text;
  final bool enabledPop;
  final bool enabledActions;

  MyAppBar(
    this.context, {
    this.text,
    this.enabledPop = false,
    super.key,
    this.enabledActions = true,
  }) : super(
          title: Text(
            text ?? AppConstant().appName,
            style: TextStyle(color: AppTheme().appSecondaryColor, fontSize: 25),
          ),
          actions: enabledActions
              ? [
                  IconButton(
                    onPressed: () {
                      context.router.push(const AboutRoute());
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.ellipsisVertical,
                      color: AppTheme().appSecondaryColor,
                    ),
                  ),
                ]
              : null,
          leading: enabledPop
              ? IconButton(
                  onPressed: () {
                    AutoRouter.of(context).pop();
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: AppTheme().appSecondaryColor,
                  ),
                )
              : null,
        );
}
