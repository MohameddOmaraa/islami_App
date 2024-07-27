import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:basics_friday_c11/provider/sura_detalis_provider.dart';
import 'package:basics_friday_c11/sura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class SuraDetails extends StatelessWidget {
  static const String routeName="SuraDetails";
    SuraDetails({super.key, SuraModel});
  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    var providerr=Provider.of<MyProvider>(context);
var provider=Provider.of<SuraDetalisProvider>(context);
    if(provider.verses.isEmpty){
      provider.loadSuraFile(model.index);
    }

    return Stack(
      children: [
        Image.asset( providerr.mode==ThemeMode.light?
        "assets/imagess/default_bg.png":
        "assets/imagess/maindark_bg.png",fit: BoxFit.fill,width: double.infinity,),
     Scaffold(
        appBar: AppBar(

          title: Text(model.name,style: TextStyle(
            color: providerr.mode==ThemeMode.light?blackColor:Colors.white,
          ),),

        ),
       body: Card(
    color: providerr.mode==ThemeMode.light?primaryColor:Colors.transparent,
        // elevation: double.infinity,
         margin: EdgeInsets.all(12),
          child: ListView.builder(itemBuilder:  (context, index) {
            return Text(
            "${provider.verses[index]}(${index+1})"
              ,textAlign: TextAlign.center,
             style: GoogleFonts.inder(fontSize: 25,color: providerr.mode==ThemeMode.light?Colors.white:yellowColor,
            ),
         textDirection: TextDirection.rtl,
            );
              },
          itemCount:provider.verses.length,
          ),
       ),
      ),
      ]
    );
  }
}
