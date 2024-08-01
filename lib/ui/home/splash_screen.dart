import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:provider/provider.dart';

import '../styles/my_theme_data.dart';

class SplashScreen extends StatefulWidget {
static const String routeName = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<settingsProvider>(context);
    return  Image.asset(
      settingProvider.getSplashScreen(),
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
