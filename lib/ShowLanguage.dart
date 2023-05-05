import 'package:flutter/material.dart';
import 'package:islami/providers/My-provider.dart';
import 'package:provider/provider.dart';

class Showlanguage extends StatelessWidget {
  const Showlanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            children: [


              InkWell(
                onTap: () {

provider.changeLanguage("en");

Navigator.pop(context);

                },
                child: Text("English",
                style: Theme.of(context).textTheme.bodySmall),
              ),
              Spacer(),

              Icon(Icons.done,
              color: Theme.of(context).primaryColor,),

      ],

          ),Divider(
          thickness: 1,
          indent: 50,
          endIndent: 50,
            color: Theme.of(context).primaryColor,
          ),

          Row(
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("ar");
Navigator.pop(context);
                },
                child: Text("Arabic",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black
                    )),
              ),
              Spacer(),

              Icon(Icons.done),
            ],
          )
        ],
      ),
    );


  }
}
