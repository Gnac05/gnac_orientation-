// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:gnac_orientation/core/presentation/my_app_bar.dart' as _i8;
import 'package:gnac_orientation/core/styles/app_theme.dart' as _i5;
import 'package:gnac_orientation/core/utils/constant.dart' as _i3;
import 'package:gnac_orientation/core/utils/routes/app_router.dart' as _i4;
import 'package:gnac_orientation/features/career/domain/entity/sector.dart'
    as _i19;
import 'package:gnac_orientation/features/career/presentation/widgets/sector_body.dart'
    as _i17;
import 'package:gnac_orientation/features/career/presentation/widgets/sector_widget.dart'
    as _i18;
import 'package:gnac_orientation/features/my-class/presentation/bloc/my_class_bloc.dart'
    as _i10;
import 'package:gnac_orientation/features/my-class/presentation/widget/my_class_body.dart'
    as _i11;
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart'
    as _i12;
import 'package:gnac_orientation/features/my-courses/presentation/my_courses_screen.dart'
    as _i14;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_register_body.dart'
    as _i21;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_widget.dart'
    as _i22;
import 'package:gnac_orientation/features/my-courses/presentation/widget/my_courses_body.dart'
    as _i13;
import 'package:gnac_orientation/features/my-profils/presentation/widgets/create_profil_body.dart'
    as _i6;
import 'package:gnac_orientation/features/my-profils/presentation/widgets/my_profils_body.dart'
    as _i15;
import 'package:gnac_orientation/features/my-scores/presentation/widgets/my_scores_body.dart'
    as _i16;
import 'package:gnac_orientation/features/my-scores/presentation/widgets/table_container.dart'
    as _i20;
import 'package:gnac_orientation/main.dart' as _i9;
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
    gh.factory<_i6.CreateProfilBody>(
        () => _i6.CreateProfilBody(key: gh<_i7.Key>()));
    gh.factory<_i8.MyAppBar>(() => _i8.MyAppBar(
          gh<_i7.BuildContext>(),
          text: gh<String>(),
          enabledPop: gh<bool>(),
          withIcon: gh<bool>(),
          key: gh<_i7.Key>(),
        ));
    gh.factory<_i9.MyAppScreen>(() => _i9.MyAppScreen(key: gh<_i7.Key>()));
    gh.lazySingleton<_i10.MyClassBloc>(() => _i10.MyClassBloc());
    gh.factory<_i11.MyClassBody>(() => _i11.MyClassBody(key: gh<_i7.Key>()));
    gh.lazySingleton<_i12.MyCourseBloc>(
        () => _i12.MyCourseBloc(myClass: gh<String>()));
    gh.factory<_i13.MyCoursesBody>(() => _i13.MyCoursesBody(
          key: gh<_i7.Key>(),
          coursesMap: gh<Map<String, dynamic>>(),
          myCourseBloc: gh<_i12.MyCourseBloc>(),
          myClass: gh<String>(),
          courses: gh<List<String>>(),
        ));
    gh.factory<_i14.MyCoursesScreen>(() => _i14.MyCoursesScreen(
          key: gh<_i7.Key>(),
          myClass: gh<String>(),
        ));
    gh.factory<_i15.MyProfilsBody>(
        () => _i15.MyProfilsBody(key: gh<_i7.Key>()));
    gh.factory<_i16.MyScoresBody>(() => _i16.MyScoresBody(
          key: gh<_i7.Key>(),
          result: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i17.SectorBody>(() => _i17.SectorBody(key: gh<_i7.Key>()));
    gh.factory<_i18.SectorWidget>(() => _i18.SectorWidget(
          key: gh<_i7.Key>(),
          sector: gh<_i19.Sector>(),
        ));
    gh.factory<_i20.TableContainer>(() => _i20.TableContainer(
          key: gh<_i7.Key>(),
          child: gh<_i7.Widget>(),
          withColor: gh<bool>(),
          height: gh<double>(),
        ));
    gh.factory<_i21.CourseRegisterBody>(() => _i21.CourseRegisterBody(
          key: gh<_i7.Key>(),
          courses: gh<List<String>>(),
          myCourseBloc: gh<_i12.MyCourseBloc>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i22.CourseWidget>(() => _i22.CourseWidget(
          key: gh<_i7.Key>(),
          course: gh<String>(),
          coef: gh<int>(),
          note: gh<double>(),
          myCourseBloc: gh<_i12.MyCourseBloc>(),
          courses: gh<List<String>>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    return this;
  }
}
