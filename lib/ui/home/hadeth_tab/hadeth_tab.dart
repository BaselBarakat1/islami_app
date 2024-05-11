import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
List<Hadeth> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if(Ahadeth.isEmpty){
     LoadHadethFile();}
    return Ahadeth.isEmpty? Center(child: CircularProgressIndicator(color: Color(0xffB7935F),)) : Container(
      child: Column(

        children: [
          Image.asset('assets/images/hadeth_tab_header_image.png'),
          Divider(),
          Text('Al Ahadeth',style: Theme.of(context).textTheme.headlineMedium,),
          Divider(),
          Expanded(child: ListView.separated(itemBuilder:(context, index) =>HadethTitleWidget(index: index, hadeth: Ahadeth[index]),separatorBuilder:(context, index) => Container(margin: EdgeInsets.symmetric(horizontal: 45),child: Divider()), itemCount: Ahadeth.length))
        ],
      ),
    );
  }

  Future<void> LoadHadethFile() async {
    String FileContents = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadeth = FileContents.trim().split('#');
    for(int i = 0;i<allAhadeth.length;i++){
      List<String> hadethLines = allAhadeth[i].trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: hadethContent);
      Ahadeth.add(hadeth);
    }
    setState(() {

    });
  }
}
class Hadeth{
  String title;
  String content;
  Hadeth({required this.title,required this.content});
}
