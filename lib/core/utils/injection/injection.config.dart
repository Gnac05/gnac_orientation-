// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:gnac_orientation/core/presentation/my_app_bar.dart' as _i24;
import 'package:gnac_orientation/core/styles/app_theme.dart' as _i4;
import 'package:gnac_orientation/core/utils/constant.dart' as _i5;
import 'package:gnac_orientation/core/utils/routes/app_router.dart' as _i6;
import 'package:gnac_orientation/features/career/domain/entity/sector.dart'
    as _i22;
import 'package:gnac_orientation/features/career/presentation/widgets/sector_widget.dart'
    as _i21;
import 'package:gnac_orientation/features/chat/data/gemini_ai_chat.dart' as _i7;
import 'package:gnac_orientation/features/chat/presentation/widgets/chat_body.dart'
    as _i9;
import 'package:gnac_orientation/features/my-class/presentation/bloc/my_class_bloc.dart'
    as _i8;
import 'package:gnac_orientation/features/my-class/presentation/widget/my_class_body.dart'
    as _i11;
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart'
    as _i16;
import 'package:gnac_orientation/features/my-courses/presentation/my_courses_screen.dart'
    as _i12;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_register_body.dart'
    as _i17;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_widget.dart'
    as _i18;
import 'package:gnac_orientation/features/my-courses/presentation/widget/my_courses_body.dart'
    as _i19;
import 'package:gnac_orientation/features/my-profils/presentation/bloc/my_profile_bloc.dart'
    as _i3;
import 'package:gnac_orientation/features/my-profils/presentation/widgets/create_profil_body.dart'
    as _i13;
import 'package:gnac_orientation/features/my-profils/presentation/widgets/my_profils_body.dart'
    as _i14;
import 'package:gnac_orientation/features/my-scores/presentation/widgets/my_scores_body.dart'
    as _i23;
import 'package:gnac_orientation/features/my-scores/presentation/widgets/table_container.dart'
    as _i20;
import 'package:gnac_orientation/main.dart' as _i15;
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
    gh.factory<_i3.MyProfileBloc>(() => _i3.MyProfileBloc());
    gh.lazySingleton<_i4.AppTheme>(() => _i4.AppTheme());
    gh.lazySingleton<_i5.AppConstant>(() => _i5.AppConstant());
    gh.lazySingleton<_i6.AppRouter>(() => _i6.AppRouter());
    gh.lazySingleton<_i7.GeminiAiChat>(() => _i7.GeminiAiChat());
    gh.lazySingleton<_i8.MyClassBloc>(() => _i8.MyClassBloc());
    gh.factory<_i9.ChatBody>(() => _i9.ChatBody(key: gh<_i10.Key>()));
    gh.factory<_i11.MyClassBody>(() => _i11.MyClassBody(key: gh<_i10.Key>()));
    gh.factory<_i12.MyCoursesScreen>(
        () => _i12.MyCoursesScreen(key: gh<_i10.Key>()));
    gh.factory<_i13.CreateProfilBody>(
        () => _i13.CreateProfilBody(key: gh<_i10.Key>()));
    gh.factory<_i14.MyProfilsBody>(
        () => _i14.MyProfilsBody(key: gh<_i10.Key>()));
    gh.factory<_i15.MyAppScreen>(() => _i15.MyAppScreen(key: gh<_i10.Key>()));
    gh.lazySingleton<_i16.MyCourseBloc>(
        () => _i16.MyCourseBloc(myClass: gh<String>()));
    gh.factory<_i17.CourseRegisterBody>(() => _i17.CourseRegisterBody(
          key: gh<_i10.Key>(),
          courses: gh<List<String>>(),
          myCourseBloc: gh<_i16.MyCourseBloc>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i18.CourseWidget>(() => _i18.CourseWidget(
          key: gh<_i10.Key>(),
          course: gh<String>(),
          coef: gh<int>(),
          note: gh<double>(),
          myCourseBloc: gh<_i16.MyCourseBloc>(),
          courses: gh<List<String>>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i19.MyCoursesBody>(() => _i19.MyCoursesBody(
          key: gh<_i10.Key>(),
          coursesMap: gh<Map<String, dynamic>>(),
          myCourseBloc: gh<_i16.MyCourseBloc>(),
          courses: gh<List<String>>(),
        ));
    gh.factory<_i20.TableContainer>(() => _i20.TableContainer(
          key: gh<_i10.Key>(),
          child: gh<_i10.Widget>(),
          withColor: gh<bool>(),
          height: gh<double>(),
        ));
    gh.factory<_i21.SectorWidget>(() => _i21.SectorWidget(
          key: gh<_i10.Key>(),
          sector: gh<_i22.Sector>(),
        ));
    gh.factory<_i23.MyScoresBody>(() => _i23.MyScoresBody(
          key: gh<_i10.Key>(),
          result: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i24.MyAppBar>(() => _i24.MyAppBar(
          gh<_i10.BuildContext>(),
          text: gh<String>(),
          icon: gh<_i10.Widget>(),
          titleFontSize: gh<double>(),
          enabledPop: gh<bool>(),
          withIcon: gh<bool>(),
          key: gh<_i10.Key>(),
        ));
    return this;
  }
}
