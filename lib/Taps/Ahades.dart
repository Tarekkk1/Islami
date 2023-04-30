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
    print(allAhadeth.length);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [     Image.asset("assets/images/quran_bg.png")
        ,
        Divider(
          thickness: 2,
          color: Theme.of(context).primaryColor,
        ),
        Text("Quran Name ",textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall),

        Divider(
          thickness: 2,
          color: Theme.of(context).primaryColor,
        ),
        Divider(
          thickness: 2,
          color: Theme.of(context).primaryColor,
        ),],
    );

  }

  void loadAhadeath(){
  rootBundle.loadString("assets/files/ahadeth.txt").then((value) {

  List<String>ahadethsLists=value.split("#");
  ahadethsLists.forEach((element) {
List<String>lines=element.trim().split("\n");
String title=lines[0];
lines.removeAt(0);

allAhadeth.add(hadethContent(title, lines));

setState(() {

});


  });



  }
  );

  }
}
