import 'package:flutter/material.dart';

class languageBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('English'),
          SizedBox(height: 18,),
          getUnSelectedItem('Arabic'),
        ],
      ),
    );
  }
  Widget getSelectedItem(String text){
    return Row(
      children: [
        Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xffB7935F)),),
        Spacer(),
        Icon(Icons.check_circle,size: 28,color: Color(0xffB7935F),),
      ],
    );
  }
  Widget getUnSelectedItem(String text){
    return Text(text,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xffB7935F)),);
  }
}
