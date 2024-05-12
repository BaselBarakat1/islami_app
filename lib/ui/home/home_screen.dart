import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/ui/home/quran_tab/quran_tab.dart';
import 'package:islami_app/ui/home/radio_tab/radio_tab.dart';
import 'package:islami_app/ui/home/settings_tab/settings_tab.dart';
import 'package:islami_app/ui/home/tasbeh_tab/tasbeh_tab.dart';
import 'package:islami_app/ui/styles/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          title: Text(AppLocalizations.of(context)!.app_title),
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
                label: AppLocalizations.of(context)?.quran_tab,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadeth_ic.png')),
                label: AppLocalizations.of(context)?.hadeth_tab,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha_ic.png')),
                label: AppLocalizations.of(context)?.tasbeh_tab,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio_ic.png')),
                label: AppLocalizations.of(context)?.radio_tab,
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)?.settings_tab,
                backgroundColor: Theme.of(context).primaryColor),
          ],
        ),
        body: tabs[selectedIndexTab],
      ),
    ]);
  }
}
