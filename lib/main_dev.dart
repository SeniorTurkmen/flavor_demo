import 'package:firebase_core/firebase_core.dart';
import 'package:flavor_demo/config/app_config.dart';
import 'package:flavor_demo/config/firebase_options/firebase_options_dev.dart';
import 'package:flavor_demo/material_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  AppConfig.instance.setDevParameters();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AppConfig.instance.getConfig();

  runApp(const FlavorApp());
}
