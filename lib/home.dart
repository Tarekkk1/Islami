import 'package:flutter/material.dart';
import 'package:islami/My_Theame.dart';
import 'package:islami/Taps/Ahades.dart';
import 'package:islami/Taps/QuranTape.dart';
import 'package:islami/Taps/RadioTab.dart';
import 'package:islami/Taps/SebhaTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Taps/Setting.dart';
class HomeScreen extends StatefulWidget {
  static const String routename = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int Index = 0;
  List<Widget> tabs = [QuranTab(), SebhaTab(),RadioTab(), AhadesTape(),SettingsTab()];

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
                  Text(AppLocalizations.of(context)!.appTitle, style: Theme.of(context).textTheme.bodySmall)),
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
                  label: AppLocalizations.of(context)!.quran),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
    label: AppLocalizations.of(context)!.radio),

              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(icon: Icon(Icons.book),
                  label: AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                  label: "Settings"),
            ],

          ),
        ),
      ],
    );
  }
}
