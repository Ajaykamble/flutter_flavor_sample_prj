import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample_prj/config/environment_config.dart';
import 'package:sample_prj/config/prod_env_config.dart';
import 'package:sample_prj/firebase_options_prod.dart';
import 'package:sample_prj/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  EnvironmentConfig.appEnvironment = ProdEnv.init();
  runApp(MyApp());
}
