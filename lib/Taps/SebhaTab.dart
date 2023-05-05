import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

double angle=0.0;

 void rotateImage(){
   setState(() {
     angle+=90.0;

   });
 }

  var
  counter=0;
  @override
  Widget build(BuildContext context) {


    return   Column(
children: [
  Expanded(
    child: SizedBox(
        width: double.infinity,

            child: Transform.rotate(
                angle: angle*pi/180,
                child: Image.asset("assets/images/Sebha.png"))))
  ,
  Text(
      "عدد التسبيحات"
  ),
  Expanded(
    child: SizedBox(width: double.infinity,
        child: Center(
          child: Stack(
              alignment: Alignment.center,children:[
   Image.asset("assets/images/Rectangle 3.png"),
    Text("${counter}")])))
        )
  ,
 Expanded(child: InkWell(

     onTap:  () {
       counter+=1;
       rotateImage();

       print(counter);

       setState(() {
         
       });
     },
     child:  Image.asset("assets/images/Group 3.png")))


],

    );

  }
}
