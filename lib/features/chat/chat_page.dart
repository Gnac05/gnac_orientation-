import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'widgets/chat_body.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  static const String routeName = '/ChatPage';
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context,
        text: 'Gnac Orientation AI Chat',
        titleFontSize: 17,
        icon: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: const FaIcon(FontAwesomeIcons.brain)
              .animate(
                onPlay: (controller) => controller.repeat(period: 6.seconds),
              )
              .tint(
                duration: 2.seconds,
                color: AppTheme().appPrimaryColor,
              )
              .tint(
                delay: 2.seconds,
                duration: 6.seconds,
                color: AppTheme().appSecondaryColor,
              ),
        ),
      ),
      body: const ChatBody(),
    );
  }
}
