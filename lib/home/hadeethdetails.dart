import 'dart:ui';

import 'package:basics_friday_c11/HadeethModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class hadeethDetailsScreen extends StatelessWidget {
  static const String routeName="hadeethscreen";
  hadeethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings .arguments as Hadeethmodel;
    return Container(
       decoration: BoxDecoration(
image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/imagess/default_bg.png",)),

       ),
      child: Scaffold(
      appBar: AppBar(
        title: Text(model.title,),
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 20,
            shadowColor: Color(0xFFB39B77),
            color: Colors.white24,
            child: ListView.builder(itemBuilder: (context, index) {
              return Text(model.content[index],textDirection:TextDirection.rtl,style: GoogleFonts.elMessiri(

                fontWeight: FontWeight.bold,
                fontSize: 20,
              ));
            },
            itemCount: model.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
