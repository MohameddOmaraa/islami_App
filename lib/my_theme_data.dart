import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 Color primaryColor=Color(0xFFB7935F);
 Color primarydarkColor=Color(0xFF141A2E);
 Color blackColor=Color(0xFF242424);
 Color yellowColor=Color(0xFFFACC1D);
class MyThemeData{

   static ThemeData lightTheme= ThemeData(
       primaryColor: primaryColor,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    backgroundColor: primaryColor,
    unselectedItemColor: Colors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  dividerColor: primaryColor,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      color: blackColor
    ),
    iconTheme: IconThemeData(
      color: blackColor
    ),
  centerTitle: true,
  backgroundColor: Colors.transparent,
 // titleTextStyle: ,
  ),
   // colorScheme: ColorScheme(
   //     brightness: Brightness.light,
   //     primary: primaryColor,
   //     onPrimary: onPrimary,
   //     secondary: secondary,
   //     onSecondary: onSecondary,
   //     error: error,
   //     onError: onError,
   //     surface: surface,
   //     onSurface: onSurface),
   textTheme: TextTheme(
bodyLarge:GoogleFonts.elMessiri(
  fontSize: 30,
  color: Colors.white ,
  fontWeight: FontWeight.w700,
) ,
     bodyMedium: GoogleFonts.elMessiri(
       fontSize: 25,
       color: blackColor ,
       fontWeight: FontWeight.w700,
     ),
     bodySmall: GoogleFonts.elMessiri(
       fontSize: 15,
       color: Colors.white ,
       fontWeight: FontWeight.w700,
     ),
   )

   );




   static ThemeData DarkTheme= ThemeData(
       primaryColor: primarydarkColor,
       dividerColor: yellowColor,
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
         type: BottomNavigationBarType.fixed,
         selectedItemColor: yellowColor,
         backgroundColor: primarydarkColor,
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