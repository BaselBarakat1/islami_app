import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/screens/sura_details_screen.dart';

class SuraName extends StatelessWidget {
String suraTitle;
int index;
String versesNumber;
SuraName({required this.suraTitle,required this.index,required this.versesNumber});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
        arguments:SuraArgs(title: suraTitle, index: index) ,
        );
      },
      child: Row(
        children: [
          Expanded(child: Text(versesNumber,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,fontFamily: 'El Messiri'),textAlign: TextAlign.center,)),
          Container(
            width: 3,
            height: 40,
            color: Color(0xffB7935F),
          ),
          Expanded(child: Text(suraTitle,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,fontFamily: 'El Messiri'),textAlign: TextAlign.center,)),
        ],
      ),
    );
  }
}
class SuraArgs {
  String title;
  int index;
  SuraArgs({required this.title,required this.index});
}
