enum Environment { DEV, STAGING, PROD, UAT }

class AppEnvironment {
  static var _config = _AppConfig();

  static void set({required Environment env}) {
    switch (env) {
      case Environment.DEV:
        _config = _Config.devEnvironment;
        break;
      case Environment.STAGING:
        _config = _Config.stagingEnvironment;
        break;
      case Environment.PROD:
        _config = _Config.prodEnvironment;
        break;
      case Environment.UAT:
        _config = _Config.uatEnvironment;
        break;
      default:
        _config = _Config.devEnvironment;
        break;
    }
  }

  static _AppConfig getConfig() => _config;
}

class _Config {
  static final devEnvironment = _AppConfig(
    appName: '[DEV] Smart Info',
    flavorName: Environment.DEV.name,
    apiBaseUrl: '',
    header: _header,
    receiveTimeout: _receiveTimeout,
    connectionTimeout: _connectionTimeout,
  );
  static final stagingEnvironment = _AppConfig(
    appName: '[STAG] Smart Info',
    flavorName: Environment.STAGING.name,
    apiBaseUrl: '',
    header: _header,
    receiveTimeout: _receiveTimeout,
    connectionTimeout: _connectionTimeout,
  );
  static final prodEnvironment = _AppConfig(
    appName: 'Smart Info',
    flavorName: Environment.PROD.name,
    apiBaseUrl: '',
    header: _header,
    receiveTimeout: _receiveTimeout,
    connectionTimeout: _connectionTimeout,
  );
  static final uatEnvironment = _AppConfig(
    appName: 'Smart Info',
    flavorName: Environment.UAT.name,
    apiBaseUrl: '',
    header: _header,
    receiveTimeout: _receiveTimeout,
    connectionTimeout: _connectionTimeout,
  );

  static const _header = {
    'Content-type': 'application/json',
    'connection': 'keep-alive'
  };
  static const int _receiveTimeout = 15000;
  static const int _connectionTimeout = 15000;
}

class _AppConfig {
  _AppConfig({
    this.header,
    this.receiveTimeout,
    this.connectionTimeout,
    this.appName,
    this.flavorName,
    this.apiBaseUrl,
  });

  final String? appName;
  final String? flavorName;
  final String? apiBaseUrl;
  final Map<String, String>? header;
  final int? receiveTimeout;
  final int? connectionTimeout;
}
