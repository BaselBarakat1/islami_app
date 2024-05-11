import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/quran_tab/sura_name.dart';
import 'package:islami_app/ui/home/screens/quran_details.dart';
import 'package:islami_app/ui/styles/my_theme_data.dart';

class SuraDetails extends StatefulWidget {
static const String routeName = 'sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as SuraArgs ;
    if(Verses.isEmpty) {
      readQuranFile(args.index);
    }
    return Verses.isEmpty? Center(child: CircularProgressIndicator(color: Color(0xffB7935F),)) : Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyThemeData.isDarkSelected? 'assets/images/main_background_dark.png':'assets/images/main_background_light.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('${args.title}'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(29),
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).cardColor.withOpacity(0.8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' سورة ${args.title} ',style: Theme.of(context).textTheme.titleLarge,),
                  SizedBox(width: 10),
                  Icon(Icons.play_circle,size: 28,)
                ],
              ),
              Divider(indent: 30,endIndent: 30),
          Expanded(
            child: ListView.builder(
                itemBuilder:(context, index) => QuranDetails(
                    quranText: " ${Verses[index]}{${index+1}} "
                ),itemCount:Verses.length ),
          ),
            ],
          ),
        ),
      ),
    );
  }

   Future<void> readQuranFile(int index) async {
    String fileContents = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> suraLines = fileContents.split('\n');
    Verses=suraLines;

     setState(() {

     });

   }
}



