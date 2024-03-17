import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/core/styles/app_theme.dart';
import 'package:gnac_orientation/core/utils/injection/injection.dart';
import 'package:gnac_orientation/core/utils/routes/app_router.dart';
import 'package:injectable/injectable.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await getIt.reset();
  runApp(const MyAppScreen());
}

@RoutePage()
@injectable
class MyAppScreen extends StatelessWidget {
  static const routeName = '/app';
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      title: 'Gnac Orientation',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().myThemeData(context),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
