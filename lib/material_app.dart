import 'package:flavor_demo/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'config/app_config.dart';

class FlavorApp extends StatefulWidget {
  const FlavorApp({Key? key}) : super(key: key);

  @override
  State<FlavorApp> createState() => _FlavorAppState();
}

class _FlavorAppState extends State<FlavorApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.instance.remoteConfigs['app_name'],
      theme: AppConfig.instance.theme,
      home: const HomePage(),
    );
  }
}
