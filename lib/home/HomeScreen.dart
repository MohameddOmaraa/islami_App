import 'package:basics_friday_c11/home/tabs/AhadeethTab.dart';
import 'package:basics_friday_c11/home/tabs/QuranTab.dart';
import 'package:basics_friday_c11/home/tabs/RadioTab.dart';
import 'package:basics_friday_c11/home/tabs/SebhaTab.dart';
import 'package:basics_friday_c11/home/tabs/SettingsTab.dart';
import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
       Image.asset(
         provider.mode==ThemeMode.light?
         "assets/imagess/bg1x.png":
         "assets/imagess/maindark_bg.png",
         fit: BoxFit.fill,
         width: double.infinity,),

        Scaffold(

          appBar: AppBar(
            title: Text("Islami",
            style: Theme.of(context).textTheme.bodyLarge,
            ),
    ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: Selectedindex,
            onTap: (value) {
              Selectedindex=value;
              setState(() {

              });
            },
            backgroundColor: primaryColor,
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items:[
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_quran.png")),label: "", ),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_sebha.png")),label: "", ),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_radio1x.png")),label: "", ),
             BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/imagess/icon_hadeth.png")),label: "",),
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
