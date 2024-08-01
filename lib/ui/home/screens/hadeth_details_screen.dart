import 'package:flutter/material.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/ui/styles/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
static const String routeName = 'Hadeth-Details';
  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var settingProvider = Provider.of<settingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(settingProvider.getBackground()),
        fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.app_title)),
        body: SingleChildScrollView(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Theme.of(context).cardColor.withOpacity(0.8),
            margin: EdgeInsets.all(29),
            elevation: 0,
            child: Column(
              children: [
                Container(
                   padding: EdgeInsets.only(top: 30),
                    child: Text(args.title,style: Theme.of(context).textTheme.titleLarge)),
                Divider(endIndent: 30,indent: 30),
                Container(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    args.content,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
