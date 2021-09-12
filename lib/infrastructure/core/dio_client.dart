import 'package:dio/dio.dart';
import 'package:flutter_archetype/common/common.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioClient {
  static const _authTokenHeaderKey = 'x-firebase-token';
  static const _platformHeaderKey = 'platform';
  static const _versionHeaderKey = 'version';
  static const _deviceHeaderKey = 'device';

  static const _platformEnumMap = {
    AppPlatform.ios: 'ios',
    AppPlatform.android: 'android',
    AppPlatform.web: 'web',
  };

  late final Dio _dio;
  final AppInfoService _appInfoService;
  final StorageService _storageService;

  Dio get dio => _dio;

  DioClient(this._appInfoService, this._storageService) {
    _dio = Dio()
      ..interceptors.addAll(
        [
          _getAuthInterceptor(),
          _getInfoInterceptor(),
        ],
      );
  }

  InterceptorsWrapper _getAuthInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        var token = await _storageService.getAuthToken();

        if (token != null) {
          options.headers[_authTokenHeaderKey] = token;
        }

        return handler.next(options);
      },
    );
  }

  InterceptorsWrapper _getInfoInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        var version = await _appInfoService.version;
        var device = await _appInfoService.device;
        var platform = await _appInfoService.platform;

        options.headers.addAll({
          _versionHeaderKey: version,
          _deviceHeaderKey: StringUtils.removeNonASCII(device),
          _platformHeaderKey: _platformEnumMap[platform],
        });

        return handler.next(options);
      },
    );
  }
}
