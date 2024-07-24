import 'package:basics_friday_c11/HadeethModel.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class Ahadeethdetails extends StatefulWidget {
  static const String routeName="Ahadeethdetails";
  const Ahadeethdetails({super.key});

  @override
  State<Ahadeethdetails> createState() => _AhadeethDetailsState();
}

class _AhadeethDetailsState extends State<Ahadeethdetails> {
  List<String>verses=[];
  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as Hadeethmodel;
    var provider=Provider.of<MyProvider>(context);

    return Stack(
        children: [
          Image.asset(
            provider.mode==ThemeMode.light?
          "assets/imagess/bg1x.png":
          "assets/imagess/maindark_bg.png",fit: BoxFit.fill,width: double.infinity,),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
             title: Text(model.title,style:GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              )),

    ),
            body: Card(
              color: Color(0xFFB7935F),
              margin: EdgeInsets.all(12),
              child: ListView.builder(itemBuilder:  (context, index) {
                return Text(
                "${model.content[index]}" ,textAlign: TextAlign.start,
                  style: GoogleFonts.inder(fontSize: 25,color: Colors.white,
                  ),
                  textDirection: TextDirection.rtl,

                );
              },
                itemCount: model.content.length,
              ),
            ),
          ),
        ]
    );
  }
  late String Hadeethlines;
  loadhadeethFile(int index)async{
    String sura=await rootBundle.loadString("assets/files/${index+1}.txt");

    List <String> suralines=sura.split("\n");
    print(suralines);
    verses==Hadeethlines;
    setState(() {

    });
  }
}
