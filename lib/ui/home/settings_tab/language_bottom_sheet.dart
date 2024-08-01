import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class languageBottomSheet extends StatefulWidget {

  @override
  State<languageBottomSheet> createState() => _languageBottomSheetState();
}

class _languageBottomSheetState extends State<languageBottomSheet> {
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
                settingProvider.changeLocal('en');
              },
              child: settingProvider.currentLocal=='en'? getSelectedItem('English') : getUnSelectedItem('English')),
          SizedBox(height: 18,),
          InkWell(
            onTap: () {
              settingProvider.changeLocal('ar');
            },
              child: settingProvider.currentLocal=='ar'? getSelectedItem('Arabic') : getUnSelectedItem('Arabic')),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text){
    return Row(
      children: [
        Text(text,style: Theme.of(context).textTheme.bodySmall,),
        Spacer(),
        Icon(Icons.check_circle,color: Theme.of(context).dividerColor,size: 28,),
      ],
    );
  }

  Widget getUnSelectedItem(String text){
    return Row(
      children: [
        Text(text,style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
