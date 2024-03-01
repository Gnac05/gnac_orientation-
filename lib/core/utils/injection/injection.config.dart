// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:gnac_orientation/core/styles/app_theme.dart' as _i5;
import 'package:gnac_orientation/core/utils/constant.dart' as _i3;
import 'package:gnac_orientation/core/utils/routes/app_router.dart' as _i4;
import 'package:gnac_orientation/features/my-class/presentation/bloc/my_class_bloc.dart'
    as _i6;
import 'package:gnac_orientation/features/my-courses/presentation/bloc/my_course_bloc.dart'
    as _i7;
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
    gh.factory<_i3.AppConstant>(() => _i3.AppConstant());
    gh.factory<_i4.AppRouter>(() => _i4.AppRouter());
    gh.factory<_i5.AppTheme>(() => _i5.AppTheme());
    gh.factory<_i6.MyClassBloc>(() => _i6.MyClassBloc());
    gh.factory<_i7.MyCourseBloc>(() => _i7.MyCourseBloc());
    return this;
  }
}
