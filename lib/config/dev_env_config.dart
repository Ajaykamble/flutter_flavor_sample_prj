import 'package:sample_prj/config/environment_config.dart';

class DevEnv extends EnvironmentConfig {
  DevEnv._();
  static final DevEnv _envObj = DevEnv._();

  factory DevEnv.init() {
    _envObj.setEnvironment(Environment.dev);
    _envObj.setBaseUrl("dev.api.ajay.com");
    return _envObj;
  }

}
