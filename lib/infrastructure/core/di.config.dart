// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/auth_cubit.dart' as _i19;
import '../../application/auth/login_cubit.dart' as _i12;
import '../../application/auth/register_cubit.dart' as _i15;
import '../../application/core/app_links_cubit.dart' as _i18;
import '../../application/core/network_cubit.dart' as _i21;
import '../../application/core/settings_cubit.dart' as _i22;
import '../../application/home/home_cubit.dart' as _i11;
import '../../application/navigation/navigation_cubit.dart' as _i13;
import '../../domain/domain.dart' as _i3;
import '../auth/firebase_auth_repository.dart' as _i9;
import 'dio_client.dart' as _i20;
import 'external_app_service_impl.dart' as _i10;
import 'firebase_analytics_service.dart' as _i4;
import 'firebase_dynamic_links_service.dart' as _i7;
import 'mobile_info_service_impl.dart' as _i6;
import 'network_info_service_impl.dart' as _i14;
import 'secure_storage_service_impl.dart' as _i16;
import 'web_dynamic_links_service.dart' as _i8;
import 'web_info_service_impl.dart' as _i5;
import 'web_local_storage_service_impl.dart' as _i17;

const String _web = 'web';
const String _mobile = 'mobile';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.AnalyticsService>(_i4.FlutterAnalyticsService());
  gh.lazySingleton<_i3.AppInfoService>(() => _i5.WebInfoServiceImpl(),
      registerFor: {_web});
  gh.lazySingleton<_i3.AppInfoService>(() => _i6.MobileInfoServiceImpl(),
      registerFor: {_mobile});
  gh.lazySingleton<_i3.AppLinksService>(() => _i7.FirebaseDynamicLinksService(),
      registerFor: {_mobile});
  gh.lazySingleton<_i3.AppLinksService>(() => _i8.WebDynamicLinksService(),
      registerFor: {_web});
  gh.singleton<_i3.AuthRepository>(_i9.FirebaseAuthRepository());
  gh.singleton<_i3.ExternalAppService>(_i10.ExternalAppServiceImpl());
  gh.factory<_i11.HomeCubit>(() => _i11.HomeCubit());
  gh.factory<_i12.LoginCubit>(() => _i12.LoginCubit(get<_i3.AuthRepository>()));
  gh.factory<_i13.NavigationCubit>(() => _i13.NavigationCubit());
  gh.singleton<_i3.NetworkInfoService>(_i14.NetworkInfoServiceImpl());
  gh.factory<_i15.RegisterCubit>(
      () => _i15.RegisterCubit(get<_i3.AuthRepository>()));
  gh.lazySingleton<_i3.StorageService>(() => _i16.SecureStorageServiceImpl(),
      registerFor: {_mobile});
  gh.lazySingleton<_i3.StorageService>(() => _i17.WebLocalStorageServiceImpl(),
      registerFor: {_web});
  gh.factory<_i18.AppLinksCubit>(
      () => _i18.AppLinksCubit(get<_i3.AppLinksService>()));
  gh.factory<_i19.AuthCubit>(() =>
      _i19.AuthCubit(get<_i3.AuthRepository>(), get<_i3.StorageService>()));
  gh.singleton<_i20.DioClient>(
      _i20.DioClient(get<_i3.AppInfoService>(), get<_i3.StorageService>()));
  gh.factory<_i21.NetworkCubit>(
      () => _i21.NetworkCubit(get<_i3.NetworkInfoService>()));
  gh.factory<_i22.SettingsCubit>(
      () => _i22.SettingsCubit(get<_i3.StorageService>()));
  return get;
}
