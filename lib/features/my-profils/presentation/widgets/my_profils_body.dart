import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/widgets/info_widget.dart';
import 'package:gnac_orientation/core/utils/constant.dart';
import 'package:gnac_orientation/features/my-profils/presentation/widgets/my_profil_widget.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyProfilsBody extends StatelessWidget {
  const MyProfilsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: InfoWidget(
            title: 'Bienvenu sur ${AppConstant().appName}.',
            descrition:
                'Votre appli d\'orientation pour un avenir certain. Vous pouvez consulter vos profils ou créer un nouveau profil 😊',
          ),
        ),
        Expanded(
          flex: 8,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) => MyProfilWidget(
              pseudo: 'pseudo $index',
              willNewProfil: index == 0,
            ),
            itemCount: 7,
          ),
        )
      ],
    );
  }
}
