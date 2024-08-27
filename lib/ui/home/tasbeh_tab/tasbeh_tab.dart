import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
int counter = 0;

int index = 0;

double angle = 0;

List<String> tasbeehList = [
  'سبحان الله',
  'الحمد لله',
  'لا اله الا الله',
  'الله اكبر',
];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<settingsProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.047),
                child: Transform.rotate(
                     angle: angle,
                    child: Image.asset(settingProvider.getBodyOfSebha())),
              ),
              Image.asset(settingProvider.getHeadOfSebha()),
            ],
          ),
          SizedBox(height: 20,),
          Text(AppLocalizations.of(context)!.number_of_tasbeeh,style: Theme.of(context).textTheme.headlineMedium,),
          SizedBox(height: 26,),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
               borderRadius: BorderRadius.circular(30)
            ),
            child: Text('$counter',style: Theme.of(context).textTheme.titleMedium),
          ),
          SizedBox(height: 26,),
          InkWell(
            onTap: () {
              tasbeeh();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(35)
              ),
              child: Text(tasbeehList[index],style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),
        ],
      ),
    );
  }

  void tasbeeh() {
    if(counter < 33){
      angle += 0.7;
      counter++;
    }else{
      if(index < 3) {
        index++;
        counter = 0;
      }else{
        index = 0;
        counter = 0;
      }
    }
    setState(() {

    });
  }
}
