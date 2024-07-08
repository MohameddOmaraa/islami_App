
import 'package:basics_friday_c11/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute:Home.routeName,
        routes: {
          Home.routeName:(context)=>Home(),

        }
    );
  }
}


