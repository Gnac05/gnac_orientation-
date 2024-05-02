// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CareersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CareersPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatPage(),
      );
    },
    CourseRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<CourseRegisterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CourseRegisterScreen(
          key: args.key,
          courses: args.courses,
          myCourseBloc: args.myCourseBloc,
          myClass: args.myClass,
          coursesMap: args.coursesMap,
        ),
      );
    },
    CreateProfilRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateProfilPage(),
      );
    },
    MyAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyAppScreen(),
      );
    },
    MyClassRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyClassScreen(),
      );
    },
    MyCoursesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyCoursesScreen(),
      );
    },
    MyProfilsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyProfilsScreen(),
      );
    },
    MyScoresRoute.name: (routeData) {
      final args = routeData.argsAs<MyScoresRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyScoresScreen(
          key: args.key,
          result: args.result,
        ),
      );
    },
    SectorsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SectorsPage(),
      );
    },
  };
}

/// generated route for
/// [CareersPage]
class CareersRoute extends PageRouteInfo<void> {
  const CareersRoute({List<PageRouteInfo>? children})
      : super(
          CareersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CareersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CourseRegisterScreen]
class CourseRegisterRoute extends PageRouteInfo<CourseRegisterRouteArgs> {
  CourseRegisterRoute({
    Key? key,
    required List<String> courses,
    required MyCourseBloc myCourseBloc,
    required String myClass,
    required Map<String, dynamic> coursesMap,
    List<PageRouteInfo>? children,
  }) : super(
          CourseRegisterRoute.name,
          args: CourseRegisterRouteArgs(
            key: key,
            courses: courses,
            myCourseBloc: myCourseBloc,
            myClass: myClass,
            coursesMap: coursesMap,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseRegisterRoute';

  static const PageInfo<CourseRegisterRouteArgs> page =
      PageInfo<CourseRegisterRouteArgs>(name);
}

class CourseRegisterRouteArgs {
  const CourseRegisterRouteArgs({
    this.key,
    required this.courses,
    required this.myCourseBloc,
    required this.myClass,
    required this.coursesMap,
  });

  final Key? key;

  final List<String> courses;

  final MyCourseBloc myCourseBloc;

  final String myClass;

  final Map<String, dynamic> coursesMap;

  @override
  String toString() {
    return 'CourseRegisterRouteArgs{key: $key, courses: $courses, myCourseBloc: $myCourseBloc, myClass: $myClass, coursesMap: $coursesMap}';
  }
}

/// generated route for
/// [CreateProfilPage]
class CreateProfilRoute extends PageRouteInfo<void> {
  const CreateProfilRoute({List<PageRouteInfo>? children})
      : super(
          CreateProfilRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateProfilRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyAppScreen]
class MyAppRoute extends PageRouteInfo<void> {
  const MyAppRoute({List<PageRouteInfo>? children})
      : super(
          MyAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyClassScreen]
class MyClassRoute extends PageRouteInfo<void> {
  const MyClassRoute({List<PageRouteInfo>? children})
      : super(
          MyClassRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyClassRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyCoursesScreen]
class MyCoursesRoute extends PageRouteInfo<void> {
  const MyCoursesRoute({List<PageRouteInfo>? children})
      : super(
          MyCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyCoursesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyProfilsScreen]
class MyProfilsRoute extends PageRouteInfo<void> {
  const MyProfilsRoute({List<PageRouteInfo>? children})
      : super(
          MyProfilsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyProfilsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyScoresScreen]
class MyScoresRoute extends PageRouteInfo<MyScoresRouteArgs> {
  MyScoresRoute({
    Key? key,
    required Map<String, dynamic> result,
    List<PageRouteInfo>? children,
  }) : super(
          MyScoresRoute.name,
          args: MyScoresRouteArgs(
            key: key,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'MyScoresRoute';

  static const PageInfo<MyScoresRouteArgs> page =
      PageInfo<MyScoresRouteArgs>(name);
}

class MyScoresRouteArgs {
  const MyScoresRouteArgs({
    this.key,
    required this.result,
  });

  final Key? key;

  final Map<String, dynamic> result;

  @override
  String toString() {
    return 'MyScoresRouteArgs{key: $key, result: $result}';
  }
}

/// generated route for
/// [SectorsPage]
class SectorsRoute extends PageRouteInfo<void> {
  const SectorsRoute({List<PageRouteInfo>? children})
      : super(
          SectorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SectorsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
