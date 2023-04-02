import 'package:sample_prj/config/environment_config.dart';

class ProdEnv extends EnvironmentConfig {
  ProdEnv._();
  static final ProdEnv _envObj = ProdEnv._();

  factory ProdEnv.init() {
    _envObj.setEnvironment(Environment.prod);
    _envObj.setBaseUrl("api.ajay.com");
    return _envObj;
  }

}