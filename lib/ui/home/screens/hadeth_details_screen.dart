import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_tab.dart';

class HadethDetails extends StatelessWidget {
static const String routeName = 'Hadeth-Details';
  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main_background_light.png'),
        fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('Islami')),
        body: SingleChildScrollView(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Color(0xffF8F8F8).withOpacity(0.8),
            margin: EdgeInsets.all(29),
            elevation: 0,
            child: Column(
              children: [
                Container(
                   padding: EdgeInsets.only(top: 30),
                    child: Text(args.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400,fontFamily: 'El Messiri'))),
                Divider(endIndent: 30,indent: 30),
                Container(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    args.content,
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400),
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
