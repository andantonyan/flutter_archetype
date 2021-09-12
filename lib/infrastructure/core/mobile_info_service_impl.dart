import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'di.env.dart';

@mobile
@LazySingleton(as: AppInfoService)
class MobileInfoServiceImpl implements AppInfoService {
  static final _deviceInfoPlugin = DeviceInfoPlugin();

  AppPlatform? _platform;
  String? _version;
  String? _device;

  @override
  Future<AppPlatform> get platform async {
    _platform ??= Platform.isIOS ? AppPlatform.ios : AppPlatform.android;

    return _platform!;
  }

  @override
  Future<String> get version async {
    if (_version == null) {
      var packageInfo = await PackageInfo.fromPlatform();

      _version = '${packageInfo.version}+${packageInfo.buildNumber}';
    }

    return _version!;
  }

  @override
  Future<String> get device async {
    if (_device == null) {
      switch (await platform) {
        case AppPlatform.android:
          var androidInfo = await _deviceInfoPlugin.androidInfo;
          _device = 'Android ${androidInfo.version.release}, ${androidInfo.brand}, ${androidInfo.model}';
          break;
        case AppPlatform.ios:
          var iosInfo = await _deviceInfoPlugin.iosInfo;
          _device = '${iosInfo.name}, ${iosInfo.systemName}, ${iosInfo.systemVersion}, ${iosInfo.model}';
          break;
        default:
      }
    }

    return _device!;
  }
}
