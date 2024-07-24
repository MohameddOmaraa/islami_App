import 'dart:ui';

import 'package:basics_friday_c11/HadeethModel.dart';
import 'package:basics_friday_c11/home/hadeethdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AhadeethTab extends StatefulWidget {

  AhadeethTab({super.key});

  @override
  State<AhadeethTab> createState() => _AhadeethTabState();
}

class _AhadeethTabState extends State<AhadeethTab> {
List<Hadeethmodel>allAhadeeth=[];

  @override
  Widget build(BuildContext context) {

    if(allAhadeeth.isEmpty){
      LoadAhadeethFiles();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/imagess/hadeth_logo.png",width: 312,height: 219,),
          Divider(
            thickness: 3,
            color: Color(0xFFB7935F),
          ),
          Center(
            child: Text("ahadeeth",style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w600,
              fontSize: 25,

            ),),
          ),
          Divider(
            thickness: 3,
            color: Color(0xFFB7935F),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
              return InkWell(onTap: () {
                Navigator.pushNamed(context, hadeethDetailsScreen.routeName,arguments:allAhadeeth[index]);

              },
                child: Text(allAhadeeth[index].title, textAlign:TextAlign.center,style: GoogleFonts.elMessiri(

                  fontWeight: FontWeight.w600,
                  fontSize: 20,

                ),),
              );
            },
            itemCount: allAhadeeth.length,
            ),
          )

        ]
    );
  }

  LoadAhadeethFiles(){
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
List<String>Ahadeeth=value.split("#");
for(int i=0;i<Ahadeeth.length;i++){
  String hadeethOne=Ahadeeth[i];
  List<String> hadeethlines=hadeethOne.trim().split("\n");
  String title=hadeethlines[0];
  hadeethlines.removeAt(0);
  List<String> content=hadeethlines;
  Hadeethmodel hadeethmodel=Hadeethmodel(title, content);
  allAhadeeth.add(hadeethmodel);
  print(hadeethmodel.title);

}
    });
    setState(() {

    });
  }
}
//Text("data item ${index+1}");