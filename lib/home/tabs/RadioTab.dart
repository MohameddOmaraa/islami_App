import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
class RadioTab extends StatelessWidget {

  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
        children: [
          Center(
              child: Image.asset("assets/imagess/radio_image.png")),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 250,),
                  Text("اذاعة القرآن الكريم",style: GoogleFonts.elMessiri(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                   color:  provider.mode==ThemeMode.light?blackColor:Colors.white,
                  ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.skip_previous_rounded, size: 30),
                        color:provider.mode==ThemeMode.light?primaryColor:yellowColor,
                        onPressed: () {
                          // Handle play button press
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.play_arrow, size: 30),
                        color:provider.mode==ThemeMode.light?primaryColor:yellowColor,
                        onPressed: () {
                          // Handle stop button press
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.skip_next_rounded, size: 30),
                        color:provider.mode==ThemeMode.light?primaryColor:yellowColor,
                        onPressed: () {
                          // Handle volume up button press
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]
    );
  }
}
