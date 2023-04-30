
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/My_Theame.dart';
import 'package:islami/suraContintent.dart';
import 'package:islami/home.dart';

void main (){
  runApp(MyApplication());

}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      theme: MyTheame.lightTheame
      ,darkTheme: MyTheame.darkTheme,
      routes:{HomeScreen.routename
          :(context)=>HomeScreen(),

SuraContent.routename:(Context)=>SuraContent(),

      },

    );

  }
}