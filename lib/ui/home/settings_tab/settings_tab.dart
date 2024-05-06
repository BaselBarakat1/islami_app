import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/settings_tab/language_bottom_sheet.dart';
import 'package:islami_app/ui/home/settings_tab/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Theme',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,)),
          ),
          InkWell(
            onTap: () {
            showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffB7935F),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Text('Light',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Language',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          ),
          InkWell(
            onTap: () {
            showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffB7935F),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Text('English',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) => themeBottomSheet());
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) => languageBottomSheet());
  }
}
