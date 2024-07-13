import 'package:basics_friday_c11/sura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName="SuraDetails";
  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];
  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadSuraFile(model.index);
    }
    loadSuraFile(model.index);
    return Stack(
      children: [
        Image.asset("assets/imagess/default_bg.png",fit: BoxFit.fill,width: double.infinity,),
     Scaffold(
       backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(model.name,style:GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          )),
        ),
       body: Card(
    color: Color(0xFFB7935F),
         margin: EdgeInsets.all(12),
         child: ListView.builder(itemBuilder:  (context, index) {
           return Text(
           //"${verses[index](${inex+1})" ,textAlign: TextAlign.start,
             "",
           style: GoogleFonts.inder(fontSize: 25,color: Colors.white,
           ),
             textDirection: TextDirection.rtl,
             textAlign: TextAlign.center,
           );
         },
         itemCount: verses.length,
         ),
       ),
      ),
      ]
    );
  }
  loadSuraFile(int index)async{
String sura=await rootBundle.loadString("assets/files/${index+1}.txt");

List <String> suralines=sura.split("\n");
print(suralines);
verses==suralines;
setState(() {

});
  }
}
