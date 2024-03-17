import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:injectable/injectable.dart';

@injectable
class TableContainer extends StatelessWidget {
  const TableContainer(
      {super.key, required this.child, this.withColor = false, this.height});
  final Widget child;
  final bool withColor;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppTheme().appSecondaryColor!,
            width: 2,
          ),
          left: BorderSide(
            color: AppTheme().appSecondaryColor!,
            width: 2,
          ),
        ),
        color: withColor ? AppTheme().red100 : null,
      ),
      child: Center(child: child),
    );
  }
}
