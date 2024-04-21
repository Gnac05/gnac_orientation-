// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:gnac_orientation/core/presentation/my_app_bar.dart' as _i10;
import 'package:gnac_orientation/core/styles/app_theme.dart' as _i5;
import 'package:gnac_orientation/core/utils/constant.dart' as _i3;
import 'package:gnac_orientation/core/utils/routes/app_router.dart' as _i4;
import 'package:gnac_orientation/features/career/domain/entity/sector.dart'
    as _i22;
import 'package:gnac_orientation/features/career/presentation/widgets/sector_body.dart'
    as _i20;
import 'package:gnac_orientation/features/career/presentation/widgets/sector_widget.dart'
    as _i21;
import 'package:gnac_orientation/features/chat/data/gemini_ai_chat.dart' as _i9;
import 'package:gnac_orientation/features/chat/presentation/widgets/chat_body.dart'
    as _i6;
import 'package:gnac_orientation/features/my-class/presentation/bloc/my_class_bloc.dart'
    as _i12;
import 'package:gnac_orientation/features/my-class/presentation/widget/my_class_body.dart'
    as _i13;
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart'
    as _i14;
import 'package:gnac_orientation/features/my-courses/presentation/my_courses_screen.dart'
    as _i16;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_register_body.dart'
    as _i24;
import 'package:gnac_orientation/features/my-courses/presentation/widget/course_widget.dart'
    as _i25;
import 'package:gnac_orientation/features/my-courses/presentation/widget/my_courses_body.dart'
    as _i15;
import 'package:gnac_orientation/features/my-profils/presentation/bloc/my_profile_bloc.dart'
    as _i17;
import 'package:gnac_orientation/features/my-profils/presentation/widgets/create_profil_body.dart'
    as _i8;
import 'package:gnac_orientation/features/my-profils/presentation/widgets/my_profils_body.dart'
    as _i18;
import 'package:gnac_orientation/features/my-scores/presentation/widgets/my_scores_body.dart'
    as _i19;
import 'package:gnac_orientation/features/my-scores/presentation/widgets/table_container.dart'
    as _i23;
import 'package:gnac_orientation/main.dart' as _i11;
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
    gh.factory<_i6.ChatBody>(() => _i6.ChatBody(key: gh<_i7.Key>()));
    gh.factory<_i8.CreateProfilBody>(
        () => _i8.CreateProfilBody(key: gh<_i7.Key>()));
    gh.lazySingleton<_i9.GeminiAiChat>(() => _i9.GeminiAiChat());
    gh.factory<_i10.MyAppBar>(() => _i10.MyAppBar(
          gh<_i7.BuildContext>(),
          text: gh<String>(),
          icon: gh<_i7.Widget>(),
          titleFontSize: gh<double>(),
          enabledPop: gh<bool>(),
          withIcon: gh<bool>(),
          key: gh<_i7.Key>(),
        ));
    gh.factory<_i11.MyAppScreen>(() => _i11.MyAppScreen(key: gh<_i7.Key>()));
    gh.lazySingleton<_i12.MyClassBloc>(() => _i12.MyClassBloc());
    gh.factory<_i13.MyClassBody>(() => _i13.MyClassBody(key: gh<_i7.Key>()));
    gh.lazySingleton<_i14.MyCourseBloc>(
        () => _i14.MyCourseBloc(myClass: gh<String>()));
    gh.factory<_i15.MyCoursesBody>(() => _i15.MyCoursesBody(
          key: gh<_i7.Key>(),
          coursesMap: gh<Map<String, dynamic>>(),
          myCourseBloc: gh<_i14.MyCourseBloc>(),
          myClass: gh<String>(),
          courses: gh<List<String>>(),
        ));
    gh.factory<_i16.MyCoursesScreen>(() => _i16.MyCoursesScreen(
          key: gh<_i7.Key>(),
          myClass: gh<String>(),
        ));
    gh.factory<_i17.MyProfileBloc>(() => _i17.MyProfileBloc());
    gh.factory<_i18.MyProfilsBody>(
        () => _i18.MyProfilsBody(key: gh<_i7.Key>()));
    gh.factory<_i19.MyScoresBody>(() => _i19.MyScoresBody(
          key: gh<_i7.Key>(),
          result: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i20.SectorBody>(() => _i20.SectorBody(key: gh<_i7.Key>()));
    gh.factory<_i21.SectorWidget>(() => _i21.SectorWidget(
          key: gh<_i7.Key>(),
          sector: gh<_i22.Sector>(),
        ));
    gh.factory<_i23.TableContainer>(() => _i23.TableContainer(
          key: gh<_i7.Key>(),
          child: gh<_i7.Widget>(),
          withColor: gh<bool>(),
          height: gh<double>(),
        ));
    gh.factory<_i24.CourseRegisterBody>(() => _i24.CourseRegisterBody(
          key: gh<_i7.Key>(),
          courses: gh<List<String>>(),
          myCourseBloc: gh<_i14.MyCourseBloc>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    gh.factory<_i25.CourseWidget>(() => _i25.CourseWidget(
          key: gh<_i7.Key>(),
          course: gh<String>(),
          coef: gh<int>(),
          note: gh<double>(),
          myCourseBloc: gh<_i14.MyCourseBloc>(),
          courses: gh<List<String>>(),
          myClass: gh<String>(),
          coursesMap: gh<Map<String, dynamic>>(),
        ));
    return this;
  }
}
