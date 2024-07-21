
import 'package:basics_friday_c11/SplashScreen.dart';
import 'package:basics_friday_c11/home/HomeScreen.dart';
import 'package:basics_friday_c11/home/hadeethdetails.dart';
import 'package:basics_friday_c11/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
themeMode: ThemeMode.light,
        theme: ,
        initialRoute:Splashscreen.routeName,
        routes: {
          Splashscreen.routeName:(context)=>Splashscreen(),
          Homescreen.routeName:(context)=>Homescreen(),
          SuraDetails.routeName:(context)=>SuraDetails(),
          hadeethDetailsScreen.routeName:(context)=>hadeethDetailsScreen(),

        }
    );
  }
}


