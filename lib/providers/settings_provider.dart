import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocal = 'en';
  void changeTheme(ThemeMode newTheme){
    if(newTheme==currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }
  void changeLocal(String newLocal){
    if(newLocal==currentLocal)return;
    currentLocal=newLocal;
    notifyListeners();
  }
  String getBackground(){
   return currentTheme==ThemeMode.light? 'assets/images/main_background_light.png' : 'assets/images/main_background_dark.png';
  }
  String getSplashScreen(){
    return currentTheme==ThemeMode.light? 'assets/images/splash_screen_light.png' : 'assets/images/splash_screen_dark.png';
  }
}