
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Ahadeth.dart';
import 'package:islami/My_Theame.dart';
import 'package:islami/Taps/Setting.dart';
import 'package:islami/providers/My-provider.dart';
import 'package:islami/suraContintent.dart';
import 'package:islami/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main (){
  runApp(ChangeNotifierProvider<MyProvider>(
      create:(context)=>MyProvider(),
      child: MyApplication()));

}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
var provider=Provider.of<MyProvider>(context);

    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],locale: Locale(provider.languageCode),
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      theme: MyTheame.lightTheame
      ,darkTheme: MyTheame.darkTheme,
      routes:{HomeScreen.routename
          :(context)=>HomeScreen(),

SuraContent.routename:(Context)=>SuraContent(),



        Ahadeth.routename:(Context)=>Ahadeth(),

      },

    );

  }
}