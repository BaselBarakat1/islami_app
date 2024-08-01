import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class themeBottomSheet extends StatefulWidget {

  @override
  State<themeBottomSheet> createState() => _themeBottomSheetState();
}

class _themeBottomSheetState extends State<themeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<settingsProvider>(context);
    return Container(
     color: Theme.of(context).bottomSheetTheme.backgroundColor,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
              settingProvider.changeTheme(ThemeMode.light);
              },
              child: settingProvider.currentTheme == ThemeMode.light? getSelectedItem('Light') : getUnSelectedItem('Light')),
          SizedBox(height: 18,),
          InkWell(
              onTap: () {
                settingProvider.changeTheme(ThemeMode.dark);
              },
              child: settingProvider.currentTheme == ThemeMode.dark? getSelectedItem('Dark') : getUnSelectedItem('Dark')),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text){
    return Row(
      children: [
        Text(text,style: Theme.of(context).textTheme.bodySmall,),
        Spacer(),
        Icon(Icons.check_circle,color: Theme.of(context).dividerColor,size: 28),
      ],
    );
  }

  Widget getUnSelectedItem(String text){
    return Row(
      children: [
        Text(text,style : Theme.of(context).textTheme.bodySmall,),
      ],
    );
  }
}
