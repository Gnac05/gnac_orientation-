import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/widgets/animate_floating_action_button.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:gnac_orientation/features/career/presentation/widgets/career_widget.dart';
import 'package:gnac_orientation/features/my-scores/domain/reposirtory/algo.dart';

class SectorBody extends StatelessWidget {
  const SectorBody({super.key, required this.careerWidgets});
  final List<CareerWidget> careerWidgets;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const InfoWidget(
              title: 'Filières Possibles',
              descrition:
                  'Voici les filières que tu peux choisir par ordre décroissant à partir de celle où tu auras le plus de chance d\'avoir une bourses. Le tout classé par carrière.',
            ),
            Column(
              children: List.generate(
                careerWidgets.length,
                (index) => careerWidgets[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () async {
                    final result = await MyAlgorithm().gnacOrientationAlgo(
                      userData: AppConstant().userData,
                      data: AppConstant().data,
                    );
                    if (context.mounted) {
                      AutoRouter.of(context).push(
                        MyScoresRoute(
                          result: result,
                        ),
                      );
                    }
                  },
                  child: Text(
                    'Voir Tout',
                    style: TextStyle(
                      color: AppTheme().appPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: AnimateFloatingActionButton(
        onPressed: () => context.pushRoute(
          const ChatRoute(),
        ),
      ),
    );
  }
}
