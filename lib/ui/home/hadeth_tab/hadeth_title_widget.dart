import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/ui/home/screens/hadeth_details_screen.dart';

class HadethTitleWidget extends StatelessWidget{
  int index;
  Hadeth hadeth;
  HadethTitleWidget({required this.index,required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName,
        arguments: Hadeth(title: hadeth.title, content: hadeth.content),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Text('الحديث رقم ${index+1}',
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,fontFamily: 'El Messiri'),
        ),
      ),
    );
  }
}
