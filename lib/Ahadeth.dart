import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadethConteent.dart';

class Ahadeth extends StatelessWidget {
static const String routename ="Ahadeth";


  @override
  Widget build(BuildContext context) {
    hadethContent argss = ModalRoute
        .of(context)!
        .settings
        .arguments as hadethContent;


    return
     Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/background.png"))),
            child: Scaffold(
                appBar: AppBar(
                    title: Text(
                      argss.name,
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodySmall,
                    )),
            body: SingleChildScrollView(
              child: Column(
                children: [
              Card(
              margin: EdgeInsets.symmetric(
              horizontal: 20,vertical: 20
              ),elevation: 12,
              color: Colors.white,
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)
              ),

              child:Center(child: Text(argss.content,style:
                     Theme.of(context).textTheme.bodySmall?.copyWith(
                       color: Colors.black
                     ),
                       textDirection:TextDirection.rtl,)))
                ],
              ),
            ),)
      );
  }
}
