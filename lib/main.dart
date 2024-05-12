import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/screens/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/screens/sura_details_screen.dart';
import 'package:islami_app/ui/home/splash_screen.dart';
import 'package:islami_app/ui/styles/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale('ar'),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme ,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes:{
        HadethDetails.routeName: (context) => HadethDetails(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HomeScreen.routeName:(context) => HomeScreen(),
        SplashScreen.routeName:(context) => SplashScreen(),
      },
      initialRoute:SplashScreen.routeName ,

    );
  }

}