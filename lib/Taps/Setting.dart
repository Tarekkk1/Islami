import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/ShowLanguage.dart';
import 'package:islami/providers/My-provider.dart';
import 'package:provider/provider.dart';
class SettingsTab extends StatelessWidget {
  static const routename = "Settings";

  @override
  Widget build(BuildContext context) {
   var provider=Provider.of<MyProvider>(context);


    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Language"),
        InkWell(
          onTap: () {
            showLanguagesheet(context);

          },
          child: Container(
            width: double.infinity,

            child: Text("English"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              border: Border.all(
                color: Theme.of(context).primaryColor
              )
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*.09,
        ),

        Text("Theame"),
        Container(
          width: double.infinity,

          child: Text("Light"),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              border: Border.all(
                  color: Theme.of(context).primaryColor
              )
          ),
        ),


      ],
      ),
    );

  }

  void showLanguagesheet(BuildContext context) {
    showModalBottomSheet(context: context,isScrollControlled: true,builder: (context)
    {

      return Container(
          height: MediaQuery.of(context).size.height*.80,
          child: Showlanguage());


    });}}
