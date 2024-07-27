import 'package:basics_friday_c11/HadeethModel.dart';
import 'package:basics_friday_c11/home/hadeethdetails.dart';
import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:basics_friday_c11/sura_details.dart';
import 'package:basics_friday_c11/sura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
    var provider=Provider.of<MyProvider>(context);
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/imagess/hadeth_logo.png",width: 312,height: 219,),
          Divider(
            thickness: 3,
            color: provider.mode==ThemeMode.light?primaryColor:yellowColor,
          ),
          Center(
            child: Text("ahadeeth",style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color:provider.mode==ThemeMode.light?blackColor:Colors.white,
            ),),
          ),
          Divider(
            thickness: 3,
            color: provider.mode==ThemeMode.light?primaryColor:yellowColor,
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
                    color:provider.mode==ThemeMode.light?blackColor:Colors.white,

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
  setState(() {});
}

    });

  }
}
//Text("data item ${index+1}");