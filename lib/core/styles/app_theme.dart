import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppTheme {
  final Color? appPrimaryColor = Colors.red[800];
  final Color? appSecondaryColor = Colors.blue[900];
  final Color? red100 = Colors.red[100];
  final Color? grey = Colors.grey;
  final Color? greyMedium = Colors.grey.withOpacity(0.4);
  myThemeData(BuildContext context) => 
      ThemeData(
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: appPrimaryColor,
              size: 45,
              
            ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              color: appPrimaryColor,
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: appPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          // iconSize: 75,
          // elevation: 50,
          // backgroundColor: appPrimaryColor,
          foregroundColor: appSecondaryColor,
        ),
        
        colorScheme: ColorScheme.fromSeed(
          shadow: appPrimaryColor,
          seedColor: Colors.red,
          inversePrimary: appPrimaryColor,
        ),
        useMaterial3: true,
      );

}
