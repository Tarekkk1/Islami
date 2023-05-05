import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/SuraArgs.dart';
import 'package:islami/suraContintent.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class QuranTab extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/quran_bg.png"),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Text(AppLocalizations.of(context)!.quran,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (Context, index) {
                  return Divider(
                    thickness: 1,
                    color: Theme.of(context).primaryColor,
                  );
                },
                itemBuilder: (Context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SuraContent.routename,
                          arguments: suraArgs(
                              suraName: suraNames[index], index: index));
                    },
                    child: Center(
                      child: Text(
                        suraNames[index],
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.black
                        ),
                      ),
                    ),
                  );
                },
                itemCount: suraNames.length),
          ),
        ],
      ),
    );
  }
}
