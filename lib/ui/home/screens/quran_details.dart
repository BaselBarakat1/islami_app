import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
String quranText ;
QuranDetails({required this.quranText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
        child: Text(quranText,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,style:TextStyle(fontSize: 24,fontWeight: FontWeight.w400,) ,));

  }
}
