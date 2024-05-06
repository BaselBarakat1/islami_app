import 'package:flutter/material.dart';

class themeBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('Light'),
          SizedBox(height: 18,),
          getUnSelectedItem('Dark'),
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
