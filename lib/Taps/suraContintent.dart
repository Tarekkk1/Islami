import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/SuraArgs.dart';

class SuraContent extends StatelessWidget {
static const routename="SuraContent";

  @override
  Widget build(BuildContext context) {
    suraArgs args=ModalRoute.of(context)!.settings.arguments as suraArgs;
List<String> sura=[];
if (sura.isEmpty){
  loadSura(args.index);

}
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            "assets/images/background.png"
          )
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.suraName,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),

      ),
    );

  }

  void loadSura(int index) async{
String suraGeter=await  rootBundle.loadString("assets/files/${index}.txt");

  }


}
