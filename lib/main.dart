import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/screens/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/screens/sura_details_screen.dart';
import 'package:islami_app/ui/home/splash_screen.dart';

void main(){
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true, 
            titleTextStyle:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff242424),
              fontFamily: 'El Messiri',
            ),
        ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
           selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(size: 40),
          ),
        dividerTheme: DividerThemeData(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        cardTheme: CardTheme(
          color: Color(0xfff8f8ba),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        ),

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