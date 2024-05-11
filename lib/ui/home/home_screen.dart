import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/ui/home/quran_tab/quran_tab.dart';
import 'package:islami_app/ui/home/radio_tab/radio_tab.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab.dart';
import 'package:islami_app/ui/home/tasbeh_tab/tasbeh_tab.dart';
import 'package:islami_app/ui/styles/my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        MyThemeData.isDarkSelected? 'assets/images/main_background_dark.png' : 'assets/images/main_background_light.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndexTab,
          onTap: (index) {
            selectedIndexTab = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran_ic.png')),
                label: 'Quran',
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadeth_ic.png')),
                label: 'Hadeth',
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                label: 'Tasbeh',
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                label: 'Radio',
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Theme.of(context).primaryColor),
          ],
        ),
        body: tabs[selectedIndexTab],
      ),
    ]);
  }
}
