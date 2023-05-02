import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/SuraArgs.dart';

class SuraContent extends StatefulWidget {
  static const routename = "SuraContent";

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> sura = [];

  @override
  Widget build(BuildContext context) {
    suraArgs args = ModalRoute.of(context)!.settings.arguments as suraArgs;

    if (sura.isEmpty) {
      loadSura(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.suraName,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          body: sura.isEmpty?CircularProgressIndicator()
          :ListView.separated(
            itemBuilder: (context, index) {
              return Text(sura[index],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,)
              ;
            },
            separatorBuilder: (Context, index) {
              return Divider(
                color: Theme.of(context).primaryColor,
                thickness: 1,
                endIndent: 10,
                indent: 50,
              );
            },
            itemCount: sura.length,
          )),
    );
  }

  void loadSura(int index) async {
    String suraGeter =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    sura = suraGeter.split("\n");
    setState(() {});
  }
}
