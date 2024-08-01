import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/ui/home/settings_tab/language_bottom_sheet.dart';
import 'package:islami_app/ui/home/settings_tab/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<settingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppLocalizations.of(context)!.theme ,style: Theme.of(context).textTheme.titleSmall),
          ),
          InkWell(
            onTap: () {
            showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Text(settingProvider.currentTheme==ThemeMode.light? 'Light':'Dark',
                  style: Theme.of(context).textTheme.titleSmall),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.titleSmall),
          ),
          InkWell(
            onTap: () {
            showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).dividerColor,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Text(settingProvider.currentLocal=='en'? 'English':'Arabic',
                  style: Theme.of(context).textTheme.titleSmall),
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
