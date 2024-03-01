import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gnac_orientation/features/my-class/presentation/my_class_screen.dart';
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart';
import 'package:gnac_orientation/features/my-courses/presentation/course_register_screen.dart';
import 'package:gnac_orientation/features/my-courses/presentation/my_courses_screen.dart';
import 'package:gnac_orientation/features/my-scores/presentation/my_scores_screen.dart';
import 'package:gnac_orientation/main.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyClassRoute.page, initial: true),
        AutoRoute(page: MyAppRoute.page),
        AutoRoute(page: MyCoursesRoute.page),
        AutoRoute(page: CourseRegisterRoute.page),
        AutoRoute(page: MyScoresRoute.page)
      ];
}
