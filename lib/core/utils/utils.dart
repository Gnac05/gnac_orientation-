import 'package:flutter/material.dart';

void showSnackBar(
    {required BuildContext context, bool success = false, String msg = ""}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        success ? '$msg 👌' : "Quelque chose s'est mal passée 😢",
      ),
    ),
  );
}
