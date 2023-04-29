// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:nytimes_assesments/core/di/app_module.dart' as _i8;
import 'package:nytimes_assesments/feature/home/cubit/home_cubit.dart' as _i7;
import 'package:nytimes_assesments/feature/home/repositories/home_repository.dart'
    as _i5;
import 'package:nytimes_assesments/feature/home/repositories/home_repository_impl.dart'
    as _i6;
import 'package:nytimes_assesments/feature/home/services/home_service.dart'
    as _i4;

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
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.Dio>(() => appModule.dio);
    gh.lazySingleton<_i4.HomeService>(() => _i4.HomeService(gh<_i3.Dio>()));
    gh.singleton<_i5.HomeRepository>(
        _i6.HomeRepositoryImpl(gh<_i4.HomeService>()));
    gh.lazySingleton<_i7.HomeCubit>(
        () => _i7.HomeCubit(gh<_i5.HomeRepository>()));
    return this;
  }
}

class _$AppModule extends _i8.AppModule {}
