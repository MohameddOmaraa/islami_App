import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsTab extends StatefulWidget {

  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("language",style: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
        ),
      ),
      body: Column(
        children:<Widget> [
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'arabic',
                border:
                OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                filled: false, // Add a white background to the text field
              ),
            ),
          ),
   SizedBox(height: 8,),
   Row(
     children: [
       Text("     Theme",style: GoogleFonts.elMessiri(
         fontSize: 20,
         fontWeight: FontWeight.w600
       ),)
     ],
   ),
    SizedBox(height: 20,),
    const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
    decoration: InputDecoration(
    hintText: ' light',
    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    filled: false, // Add a white background to the text field
    ),
      ),
    )
    ]
      )
    );

  }
}
