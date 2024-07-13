import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {

  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
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
                  ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.skip_previous_rounded, size: 30),
                        color:Color(0xFFB7935F),
                        onPressed: () {
                          // Handle play button press
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.stop, size: 30),
                        color:Color(0xFFB7935F),
                        onPressed: () {
                          // Handle stop button press
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.skip_next_rounded, size: 30),
                        color:Color(0xFFB7935F),
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
