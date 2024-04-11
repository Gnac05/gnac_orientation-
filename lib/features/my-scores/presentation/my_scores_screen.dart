import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gnac_orientation/core/presentation/widgets/animate_floating_action_button.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/my-scores/presentation/widgets/my_scores_body.dart';

@RoutePage()
class MyScoresScreen extends StatefulWidget {
  static const routeName = '/score';
  const MyScoresScreen({super.key, required this.result});
  final Map<String, dynamic> result;

  @override
  State<MyScoresScreen> createState() => _MyScoresScreenState();
}

class _MyScoresScreenState extends State<MyScoresScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: MyAppBar(context, text: "Mes Résultats", enabledPop: true),
        body: MyScoresBody(
          result: widget.result,
        ),
        floatingActionButton: AnimateFloatingActionButton(
            onPressed: () => context.pushRoute(const ChatRoute())),
      ),
    );
  }
}
