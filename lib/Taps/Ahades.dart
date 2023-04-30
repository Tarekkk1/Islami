import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadethConteent.dart';

class AhadesTape extends StatefulWidget {
  @override
  State<AhadesTape> createState() => _AhadesTapeState();
}

class _AhadesTapeState extends State<AhadesTape> {
List<hadethContent> allAhadeth=[];

  @override
  Widget build(BuildContext context)  {

    if (allAhadeth.length==0){

      loadAhadeath();

    }

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 200,
            child: Image.asset("assets/images/AhadethImage.png")),
        
    Expanded(
      child: ListView.separated(itemBuilder: (context, index) {
        return  Center(child: InkWell(
          onTap: () {
           },
          child: Text( allAhadeth[index].name,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.black
          ),),
        ));



      }, separatorBuilder: (context, index) {
        return
      Divider(
        endIndent: 20,
        color: Theme.of(context).primaryColor,
        thickness: 2,
        indent: 30,
      );


      }, itemCount: allAhadeth.length),
    )

      ],
    );

  }

  void loadAhadeath(){
  rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
  List<String>ahadethsLists=value.split("#");



ahadethsLists.forEach((element) {

int titleSize=element.trim().indexOf("\n");
String title =element.trim().substring(0,titleSize);
String Content =element.trim().substring(titleSize+1);
allAhadeth.add(hadethContent(title, Content));
setState(() {

});



}

);


    //   ahadethsLists.forEach((element) {
// List<String>lines=element.trim().split("\n");
// String title=lines[0];
// lines.removeAt(0);
// allAhadeth.add(hadethContent(title, lines));
// setState(() {
//
// });
//
//
//   });

  }
  );

  }
}
