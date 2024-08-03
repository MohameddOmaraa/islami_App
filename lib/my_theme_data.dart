import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 Color primaryColor=Color(0xFFB7935F);
 Color primarydarkColor=Color(0xFF141A2E);
 Color blackColor=Color(0xFF242424);
 Color yellowColor=Color(0xFFFACC1D);
 Color detailsColor=Color(0xFF141A2E);
class MyThemeData{

   static ThemeData lightTheme= ThemeData(
       primaryColor: primaryColor,
  dividerColor: Colors.red,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    backgroundColor: primaryColor,
    unselectedItemColor: Colors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),

  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.black
    ),
    iconTheme: IconThemeData(
      color: blackColor
    ),
  centerTitle: true,
  backgroundColor: Colors.transparent,

  ),

   textTheme: TextTheme(
bodyLarge:GoogleFonts.elMessiri(
  fontSize: 30,
  color: Colors.black ,
  fontWeight: FontWeight.w700,
) ,
     bodyMedium: GoogleFonts.elMessiri(
       fontSize: 25,
       color: blackColor ,
       fontWeight: FontWeight.w700,
     ),
     bodySmall: GoogleFonts.elMessiri(
       fontSize: 15,
       color: Colors.black ,
       fontWeight: FontWeight.w700,
     ),
   )

   );


   // bottomNavigationBarTheme: BottomNavigationBarThemeData(
   // type: BottomNavigationBarType.fixed,
   // selectedItemColor: yellowColor,
   // backgroundColor: primarydarkColor,
   // unselectedItemColor: Colors.white,
   // showSelectedLabels: false,
   // showUnselectedLabels: false,
   // ),

   static ThemeData DarkTheme= ThemeData(
       dividerColor: Colors.red,
       primaryColor: primarydarkColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
         backgroundColor: primarydarkColor,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: AppBarTheme(
         iconTheme: IconThemeData(
             color: blackColor
         ),
         centerTitle: true,
         backgroundColor: Colors.transparent,
         // titleTextStyle: ,
       ),

       textTheme: TextTheme(
         bodyLarge:GoogleFonts.elMessiri(
           fontSize: 30,
           color: Colors.white ,
           fontWeight: FontWeight.w700,
         ) ,
         bodyMedium: GoogleFonts.elMessiri(
           fontSize: 25,
           color: yellowColor ,
           fontWeight: FontWeight.w700,
         ),
         bodySmall: GoogleFonts.elMessiri(
           fontSize: 15,
           color: Colors.white ,
           fontWeight: FontWeight.w700,
         ),
       )

   );
}