//
// import 'package:basics_friday_c11/HomeScreen.dart';
// import 'package:basics_friday_c11/home/HomeScreen.dart';
// import 'package:flutter/material.dart';
//
// class Splashscreen extends StatefulWidget {
//
//   static const String routeName="Splashscreen";
//    Splashscreen({super.key});
//
//   @override
//   State<Splashscreen> createState() => _SplashscreenState();
// }
//
// class _SplashscreenState extends State<Splashscreen> {
//   @override
//   void initState(){
//     super.initState();
//     _navigatetohome();
//   }
//   _navigatetohome()async{
//     await Future.delayed(Duration(milliseconds: 1500));
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(),));
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: Image.asset("assets/imagess/1x.png"),
//         ),
//       ),
//     );
//   }
// }
