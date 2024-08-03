import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:basics_friday_c11/home/HomeScreen.dart';
import 'package:basics_friday_c11/home/bottom_sheets/mode.dart';
import 'package:basics_friday_c11/home/hadeethdetails.dart';
import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:basics_friday_c11/provider/sura_detalis_provider.dart';
import 'package:basics_friday_c11/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Future.delayed(const Duration(seconds: 1));
  await Future.delayed(const Duration(seconds: 1));
  await Future.delayed(const Duration(seconds: 1));
  FlutterNativeSplash.remove();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
      create: (context) => MyProvider()..getTheme(),
      ),
      ChangeNotifierProvider(
      create: (context) => SuraDetalisProvider()
       ),
    ],child: MyApp()));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context)..getTheme();
    return MaterialApp(
        locale: Locale('ar','en'),
        debugShowCheckedModeBanner: false,
      themeMode:provider.mode,
          theme: MyThemeData.lightTheme ,
          darkTheme: MyThemeData.DarkTheme,
          initialRoute:Homescreen.routeName,
          routes: {
            Homescreen.routeName:(context)=>Homescreen(),
            SuraDetails.routeName:(context)=>SuraDetails(),
            hadeethDetailsScreen.routeName:(context)=>hadeethDetailsScreen(),
          }
      );

  }
}


