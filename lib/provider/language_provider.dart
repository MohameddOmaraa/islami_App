import 'package:basics_friday_c11/main.dart';
import 'package:basics_friday_c11/provider/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//
// String lang=language;
// Future<void> getlanguage()async{
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//
//   final String? action = prefs.getString('en');
//   if(en!=null){
//     if(en==true){
//       mode=language.en;
//     }else{
//       mode=language.ar;
//     }
//     notifyListeners();
//   }
//   Future<void> changelanguage()async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final String? action = prefs.getString('en',mode==language.en);
//     notifyListeners();
//   }
// }