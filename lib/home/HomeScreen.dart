import 'package:basics_friday_c11/home/tabs/AhadeethTab.dart';
import 'package:basics_friday_c11/home/tabs/QuranTab.dart';
import 'package:basics_friday_c11/home/tabs/RadioTab.dart';
import 'package:basics_friday_c11/home/tabs/SebhaTab.dart';
import 'package:basics_friday_c11/home/tabs/SettingsTab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  static const String routeName="homescreen";
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
int Selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       Image.asset("assets/imagess/bg1x.png",fit: BoxFit.fill,width: double.infinity,),

        Scaffold(

          appBar: AppBar(
            title: Text("Islami",),
    ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Selectedindex,
            onTap: (value) {
              Selectedindex=value;
              setState(() {

              });
            },
            backgroundColor: Color(0xFFB7935F),
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items:[
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_quran.png")),label: "", backgroundColor: Color(0xFFB7935F),),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_sebha.png")),label: "", backgroundColor: Color(0xFFB7935F),),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_radio1x.png")),label: "", backgroundColor: Color(0xFFB7935F),),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_hadeth.png")),label: "", backgroundColor: Color(0xFFB7935F),),
             BottomNavigationBarItem(icon: Icon(Icons.settings),label: ""),

         ] ),
          body: tabs[Selectedindex],

        ),
    ]
        );
  }
  List<Widget> tabs=[
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadeethTab(),
    SettingsTab()
  ];
}
