import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/app_image.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyAppBar extends AppBar {
  final BuildContext context;
  final String? text;
  final bool enabledPop;
  final bool withIcon;

  MyAppBar(this.context,
      {this.text, this.enabledPop = false, this.withIcon = false, super.key})
      : super(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: withIcon,
                child: Image.asset(
                  AppImage.hat,
                  height: 60,
                  width: 60,
                ),
              ),
              Text(
                text ?? AppConstant().appName,
                style: TextStyle(
                    color: AppTheme().appSecondaryColor, fontSize: 20),
              ),
            ],
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
              : const SizedBox(),
        );
}
