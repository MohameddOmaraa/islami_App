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
var provider=Provider.of<SuraDetalisProvider>(context);
    if(provider.verses.isEmpty){
      provider.loadSuraFile(model.index);
    }

    return Stack(
      children: [
        Image.asset("assets/imagess/default_bg.png",fit: BoxFit.fill,width: double.infinity,),
     Scaffold(
        appBar: AppBar(
          title: Text(model.name,),
        ),
       body: Card(
    color: Color(0xFFB7935F),
         elevation: double.infinity,
         margin: EdgeInsets.all(12),
          child: ListView.builder(itemBuilder:  (context, index) {
            return Text(
            "${provider.verses[index]}(${index+1})"
              ,textAlign: TextAlign.start,
             style: GoogleFonts.inder(fontSize: 25,color: Colors.white,
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
