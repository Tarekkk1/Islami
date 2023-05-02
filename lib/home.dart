import 'package:flutter/material.dart';
import 'package:islami/My_Theame.dart';
import 'package:islami/Taps/Ahades.dart';
import 'package:islami/Taps/QuranTape.dart';
import 'package:islami/Taps/RadioTab.dart';
import 'package:islami/Taps/SebhaTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int Index = 0;
  List<Widget> tabs = [QuranTab(), SebhaTab(),RadioTab(), AhadesTape()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.fill,
            )),
        Scaffold(
          appBar: AppBar(
              title:
                  Text("Islami", style: Theme.of(context).textTheme.bodySmall)),
          body: tabs[Index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Index,
            onTap: (Value) {
              Index = Value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
                  label: "Moshaf"),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
    label: "Radio"),

              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: "Sebha"),
              BottomNavigationBarItem(icon: Icon(Icons.book),
                  label: "Ahades"),
            ],
          ),
        ),
      ],
    );
  }
}
