// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/auth_cubit.dart' as _i23;
import '../../application/auth/login_cubit.dart' as _i19;
import '../../application/auth/register_cubit.dart' as _i21;
import '../../application/core/app_links_cubit.dart' as _i16;
import '../../application/core/network_cubit.dart' as _i20;
import '../../application/core/settings_cubit.dart' as _i22;
import '../../application/home/home_cubit.dart' as _i11;
import '../../application/navigation/navigation_cubit.dart' as _i12;
import '../../domain/domain.dart' as _i3;
import '../auth/firebase_auth_repository.dart' as _i17;
import '../auth/firebase_injectable_module.dart' as _i24;
import 'dio_client.dart' as _i18;
import 'external_app_service_impl.dart' as _i9;
import 'firebase_analytics_service.dart' as _i4;
import 'firebase_dynamic_links_service.dart' as _i7;
import 'mobile_info_service_impl.dart' as _i6;
import 'network_info_service_impl.dart' as _i13;
import 'secure_storage_service_impl.dart' as _i14;
import 'web_dynamic_links_service.dart' as _i8;
import 'web_info_service_impl.dart' as _i5;
import 'web_local_storage_service_impl.dart' as _i15;

const String _web = 'web';
const String _mobile = 'mobile';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.AnalyticsService>(_i4.FlutterAnalyticsService());
  gh.lazySingleton<_i3.AppInfoService>(() => _i5.WebInfoServiceImpl(),
      registerFor: {_web});
  gh.lazySingleton<_i3.AppInfoService>(() => _i6.MobileInfoServiceImpl(),
      registerFor: {_mobile});
  gh.lazySingleton<_i3.AppLinksService>(() => _i7.FirebaseDynamicLinksService(),
      registerFor: {_mobile});
  gh.lazySingleton<_i3.AppLinksService>(() => _i8.WebDynamicLinksService(),
      registerFor: {_web});
  gh.singleton<_i3.ExternalAppService>(_i9.ExternalAppServiceImpl());
  gh.lazySingleton<_i10.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i11.HomeCubit>(() => _i11.HomeCubit());
  gh.factory<_i12.NavigationCubit>(() => _i12.NavigationCubit());
  gh.singleton<_i3.NetworkInfoService>(_i13.NetworkInfoServiceImpl());
  gh.lazySingleton<_i3.StorageService>(() => _i14.SecureStorageServiceImpl(),
      registerFor: {_mobile});
  gh.lazySingleton<_i3.StorageService>(() => _i15.WebLocalStorageServiceImpl(),
      registerFor: {_web});
  gh.factory<_i16.AppLinksCubit>(
      () => _i16.AppLinksCubit(get<_i3.AppLinksService>()));
  gh.singleton<_i3.AuthRepository>(
      _i17.FirebaseAuthRepository(get<_i10.FirebaseAuth>()));
  gh.singleton<_i18.DioClient>(
      _i18.DioClient(get<_i3.AppInfoService>(), get<_i3.StorageService>()));
  gh.factory<_i19.LoginCubit>(() => _i19.LoginCubit(get<_i3.AuthRepository>()));
  gh.factory<_i20.NetworkCubit>(
      () => _i20.NetworkCubit(get<_i3.NetworkInfoService>()));
  gh.factory<_i21.RegisterCubit>(
      () => _i21.RegisterCubit(get<_i3.AuthRepository>()));
  gh.factory<_i22.SettingsCubit>(
      () => _i22.SettingsCubit(get<_i3.StorageService>()));
  gh.factory<_i23.AuthCubit>(() =>
      _i23.AuthCubit(get<_i3.AuthRepository>(), get<_i3.StorageService>()));
  return get;
}

class _$FirebaseInjectableModule extends _i24.FirebaseInjectableModule {}
