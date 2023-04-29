import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AhadesTape extends StatelessWidget {

  @override
  Widget build(BuildContext context)  {
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
}
