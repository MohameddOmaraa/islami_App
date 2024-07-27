
import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:basics_friday_c11/sura_details.dart';
import 'package:basics_friday_c11/sura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuranTab extends StatelessWidget {



  QuranTab({super.key});

  List<String>SuraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Center(
      child: Column(
        children: [
          Image.asset("assets/imagess/Screenshot (1).png"),
          Divider(
            thickness: 3,
            color: provider.mode==ThemeMode.light?primaryColor:yellowColor,
          ) ,
          Text("Sura Names",
          style: TextStyle(
          color:provider.mode==ThemeMode.light?blackColor:Colors.white,
          ),

          ),
          Divider(
            thickness: 3,
color: provider.mode==ThemeMode.light?primaryColor:yellowColor,
          ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                   Navigator.pushNamed(context, SuraDetails.routeName,
                  arguments: SuraModel(SuraNames[index],index));
                  },
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Text('عددالآيات',style: TextStyle(
                              color:provider.mode==ThemeMode.light?blackColor:Colors.white,
                            ),),
                          ),
                          TableCell(
                            child: Text('اسم السورة',style: TextStyle(
                              color:provider.mode==ThemeMode.light?blackColor:Colors.white,
                            ),),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Text("${index+1}",style: TextStyle(
              color:provider.mode==ThemeMode.light?blackColor:Colors.white,
              ),),),
                          TableCell(
                            child: Text(SuraNames[index],style: TextStyle(
                              color:provider.mode==ThemeMode.light?blackColor:Colors.white,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount:SuraNames.length, // only 1 item in the list
          ), // ListView.builder
        )
    ]
    )
    );
  }
}
//Text("data item ${index+1}");