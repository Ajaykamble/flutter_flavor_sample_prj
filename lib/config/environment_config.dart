import 'package:sample_prj/config/dev_env_config.dart';

abstract class EnvironmentConfig {
  static EnvironmentConfig appEnvironment = DevEnv.init();
  late Environment _environment;
  late String _baseUrl;
  setEnvironment(Environment env) {
    _environment = env;
  }

  setBaseUrl(String url) {
    _baseUrl = url;
  }

  Environment getEnvironment() {
    return _environment;
  }

  String getBaseUrl() {
    return _baseUrl;
  }
}

enum Environment {
  dev,
  prod;
}
