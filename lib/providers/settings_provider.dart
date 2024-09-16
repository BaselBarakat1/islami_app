import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class settingsProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocal = 'en';
  Future<void> changeTheme(ThemeMode newTheme) async {
    if(newTheme==currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDark', newTheme == ThemeMode.dark);
  }

  Future<void> changeLocal(String newLocal) async {
    if(newLocal==currentLocal)return;
    currentLocal=newLocal;
    notifyListeners();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('lang', newLocal);
  }

  Future<void> getLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? lang = prefs.getString('lang');
    if(lang != null){
      currentLocal = lang;
      notifyListeners();
    }
  }

  Future<void> getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark = prefs.getBool('isDark');
    if(isDark != null){
      if(isDark){
        currentTheme = ThemeMode.dark;
      }else{
        currentTheme = ThemeMode.light;
      }
      notifyListeners();
    }
  }


  String getBackground(){
   return currentTheme==ThemeMode.light? 'assets/images/main_background_light.png' : 'assets/images/main_background_dark.png';
  }
  String getSplashScreen(){
    return currentTheme==ThemeMode.light? 'assets/images/splash_screen_light.png' : 'assets/images/splash_screen_dark.png';
  }
  String getBodyOfSebha(){
    return currentTheme == ThemeMode.light? 'assets/images/light_body_of_sebha.png' : 'assets/images/dark_body_of_sebha.png';
  }
  String getHeadOfSebha(){
    return currentTheme == ThemeMode.light? 'assets/images/light_head_of_sebha.png' : 'assets/images/dark_head_of_sebha.png';
  }
  }
