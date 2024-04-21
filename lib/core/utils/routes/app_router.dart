import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/features/career/presentation/careers_page.dart';
import 'package:gnac_orientation/features/career/presentation/sectors_page.dart';
import 'package:gnac_orientation/features/chat/presentation/chat_page.dart';
import 'package:gnac_orientation/features/my-class/presentation/my_class_screen.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:gnac_orientation/features/my-courses/presentation/course_register_screen.dart';
import 'package:gnac_orientation/features/my-courses/presentation/my_courses_screen.dart';
import 'package:gnac_orientation/features/my-profils/presentation/create_profil_page.dart';
import 'package:gnac_orientation/features/my-profils/presentation/my_profils_screen.dart';
import 'package:gnac_orientation/features/my-scores/presentation/my_scores_screen.dart';
import 'package:gnac_orientation/main.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  // @override
  // RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          // initial: true,
          page: MyProfilsRoute.page,
          path: MyProfilsScreen.routeName,
        ),
        AutoRoute(
          page: MyClassRoute.page,
          path: MyClassScreen.routeName,
        ),
        AutoRoute(
          page: MyAppRoute.page,
          path: MyAppScreen.routeName,
        ),
        AutoRoute(
          page: MyCoursesRoute.page,
          path: MyCoursesScreen.routeName,
        ),
        AutoRoute(
          page: CourseRegisterRoute.page,
          path: CourseRegisterScreen.routeName,
        ),
        AutoRoute(
          page: MyScoresRoute.page,
          path: MyScoresScreen.routeName,
        ),
        AutoRoute(
          page: CreateProfilRoute.page,
          path: CreateProfilPage.routeName,
        ),
        AutoRoute(
          initial: true,
          page: SectorsRoute.page,
          path: SectorsPage.routeName,
        ),
        AutoRoute(
          page: CareersRoute.page,
          path: CareersPage.routeName,
        ),
        AutoRoute(
          page: ChatRoute.page,
          path: ChatPage.routeName,
        )
      ];
}
