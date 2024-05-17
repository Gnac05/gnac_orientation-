import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/features/my-profils/presentation/create_profil_page.dart';

class MyProfilWidget extends StatelessWidget {
  final String pseudo;
  final bool willNewProfil;
  final String? picture;
  const MyProfilWidget(
      {super.key,
      this.pseudo = "pseudo",
      this.willNewProfil = false,
      this.picture});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).pushNamed(CreateProfilPage.routeName);
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppTheme().red100,
              image: picture != null
                  ? DecorationImage(
                      image: Image.file(File(picture!)).image,
                    )
                  : null,
            ),
            child: Padding(
              padding: EdgeInsets.all(willNewProfil ? 7 : 0),
              child: Icon(
                willNewProfil ? Icons.person_add_alt_1_rounded : Icons.person,
                size: willNewProfil ? 90 : 100,
              ),
            ),
          ),
          Expanded(
            child: Text(
              willNewProfil ? 'Nouveau profil' : pseudo,
              style: TextStyle(
                color: AppTheme().appSecondaryColor,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
