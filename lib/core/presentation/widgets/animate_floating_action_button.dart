import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';

class AnimateFloatingActionButton extends StatelessWidget {
  const AnimateFloatingActionButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "afab",
      onPressed: onPressed,
      child: const FaIcon(FontAwesomeIcons.brain)
          .animate(
            delay: 10.seconds,
            onPlay: (controller) => controller.repeat(period: 50.seconds),
          )
          .tint(color: AppTheme().appPrimaryColor, duration: 15.seconds)
          .tint(
              delay: 15.seconds,
              color: AppTheme().appSecondaryColor,
              duration: 30.seconds),
    )
        .animate(
          delay: 5.seconds,
          onPlay: (controller) => controller.repeat(period: 50.seconds),
        )
        .scale(duration: 2.seconds)
        .moveY(curve: const ElasticInOutCurve(0.8), duration: 5.seconds)
        .moveX(curve: const ElasticInOutCurve(0.8), duration: 7.seconds)
        .rotate(duration: 9.seconds)
        .rotate(delay: 4.seconds, duration: 11.seconds)
        .rotate(delay: 3.seconds, duration: 13.seconds)
        .rotate(delay: 2.seconds, duration: 16.seconds)
        .rotate(delay: 2.seconds, duration: 18.seconds)
        .rotate(delay: 3.seconds, duration: 21.seconds);
  }
}
