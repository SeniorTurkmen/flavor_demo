import 'package:flavor_demo/config/app_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.instance.remoteConfigs['app_name']),
      ),
      body: Center(
        child: Text(
            '${AppConfig.instance.enviroment.name} ${AppConfig.instance.remoteConfigs}'),
      ),
    );
  }
}
