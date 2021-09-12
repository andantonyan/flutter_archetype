enum AppPlatform {
  android,
  ios,
  web,
}

abstract class AppInfoService {
  Future<String> get version;

  Future<String> get device;

  Future<AppPlatform> get platform;
}
