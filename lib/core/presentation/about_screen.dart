import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/presentation/my_app_bar.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, enabledActions: false, enabledPop: true,text: "A propos",),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset("assets/gnac_orientation_icon.jpg")
                            .image,
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
              Text(
                "GNAC Orientation",
                style: TextStyle(
                    color: AppTheme().appSecondaryColor, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Application d'orientation des nouveaux barcheliers béninois",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              const Text(
                "Make with ❤️ by Serge Gnacadja",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Version 1.0.0",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "@Copyright 2024",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "All rights reserved",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
