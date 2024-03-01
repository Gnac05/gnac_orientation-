// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:gnac_orientation/core/presentation/my_app_bar.dart' as _i6;
import 'package:gnac_orientation/core/styles/app_theme.dart' as _i5;
import 'package:gnac_orientation/core/utils/constant.dart' as _i3;
import 'package:gnac_orientation/core/utils/routes/app_router.dart' as _i4;
import 'package:gnac_orientation/features/my-class/presentation/bloc/my_class_bloc.dart'
    as _i9;
import 'package:gnac_orientation/features/my-class/presentation/widget/my_class_body.dart'
    as _i10;
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart'
    as _i11;
import 'package:gnac_orientation/features/my-courses/presentation/my_courses_screen.dart'
    as _i12;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_register_body.dart'
    as _i14;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_widget.dart'
    as _i15;
import 'package:gnac_orientation/features/my-scores/presentation/widgets/my_scores_body.dart'
    as _i13;
import 'package:gnac_orientation/main.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AppConstant>(() => _i3.AppConstant());
    gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.lazySingleton<_i5.AppTheme>(() => _i5.AppTheme());
    gh.factory<_i6.MyAppBar>(() => _i6.MyAppBar(
          gh<_i7.BuildContext>(),
          text: gh<String>(),
          enabledPop: gh<bool>(),
          key: gh<_i7.Key>(),
        ));
    gh.factory<_i8.MyAppScreen>(() => _i8.MyAppScreen(key: gh<_i7.Key>()));
    gh.lazySingleton<_i9.MyClassBloc>(() => _i9.MyClassBloc());
    gh.factory<_i10.MyClassBody>(() => _i10.MyClassBody(key: gh<_i7.Key>()));
    gh.lazySingleton<_i11.MyCourseBloc>(() => _i11.MyCourseBloc());
    gh.factory<_i12.MyCoursesScreen>(() => _i12.MyCoursesScreen(
          key: gh<_i7.Key>(),
          myClass: gh<String>(),
        ));
    gh.factory<_i13.MyScoresBody>(() => _i13.MyScoresBody(
          key: gh<_i7.Key>(),
          result: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i14.CourseRegisterBody>(() => _i14.CourseRegisterBody(
          key: gh<_i7.Key>(),
          courses: gh<List<String>>(),
          myCourseBloc: gh<_i11.MyCourseBloc>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i15.CourseWidget>(() => _i15.CourseWidget(
          key: gh<_i7.Key>(),
          course: gh<String>(),
          coef: gh<int>(),
          note: gh<double>(),
          myCourseBloc: gh<_i11.MyCourseBloc>(),
          courses: gh<List<String>>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    return this;
  }
}
