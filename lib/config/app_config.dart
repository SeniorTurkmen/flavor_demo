import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flavor_demo/config/enviroment.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static AppConfig get instance => _instance ??= AppConfig();
  static AppConfig? _instance;

  late Map<String, dynamic> remoteConfigs;

  late Env enviroment;
  late ThemeData theme;

  setAppParameters({
    required Env enviroment,
    required ThemeData theme,
  }) {
    this.enviroment = enviroment;
    this.theme = theme;
  }

  setProdParameters() {
    setAppParameters(
      enviroment: Env.prod,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
      ),
    );
  }

  setDevParameters() {
    setAppParameters(
      enviroment: Env.dev,
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
      ),
    );
  }

  getConfig() async {
    var dbData =
        await FirebaseFirestore.instance.collection('config').doc('1').get();
    remoteConfigs = dbData.data() ?? {};
  }
}
