import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'next',
      onPressed: onPressed,
      backgroundColor: AppTheme().red100,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        FontAwesomeIcons.arrowRight,
        color: AppTheme().appSecondaryColor,
      ),
    );
  }
}
