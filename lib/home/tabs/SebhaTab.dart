import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {

  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}



class _SebhaTabState extends State<SebhaTab> with TickerProviderStateMixin {
  int _counter = 0;
  int textIndex=0;
  List<String> _tasbeeh = ['سبحان الله', 'الحمد لله', 'لا اله الا الله'];
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 5000),
    );
    animationController.forward();
    animationController.addListener(() {
      setState(() {
        if (animationController.status == AnimationStatus.completed) {
          animationController.repeat();
        }
      });
    });
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 33) {
        _counter = 0;
        textIndex = (textIndex + 1) % _tasbeeh.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    return
      Column(
        children: [
          Stack(
          children: [
            Center(
                child: Image.asset( provider.mode==ThemeMode.light?
                "assets/imagess/head_sebha_logo.png":
                "assets/imagess/head_sebha_dark.png",height: 120,
                )
            ),
            Center(
              child: Transform.rotate(angle: _counter*3.14159/180,
              child: Image.asset( provider.mode==ThemeMode.light?
              "assets/imagess/body_sebha_logo.png":
              "assets/imagess/body_sebha_dark.png",width: 300,height: 400,)),

            ),
Padding(
  padding: const EdgeInsets.fromLTRB(2, 325, 2, 2),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        ("عدد التسبيحات"),
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: provider.mode==ThemeMode.light? blackColor:Colors.white
        ),
      ),
      SizedBox(height: 30),
       Container(
         width: 100,
         height: 50,
         decoration: BoxDecoration(
           color:provider.mode==ThemeMode.light?primaryColor:Colors.transparent,
           borderRadius: BorderRadius.circular(15)
         ),
         child: Center(
           child: Text(
             _counter.toString(),
             selectionColor: Colors.black,
             style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
           ),
         ),
       ),
      SizedBox(height: 50),
       ElevatedButton(
        onPressed: _incrementCounter,
        style: ElevatedButton.styleFrom(
          backgroundColor:provider.mode==ThemeMode.light?primaryColor:yellowColor,
          padding:  EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        child:  Text(
          _tasbeeh[textIndex],
          style: TextStyle(fontSize: 20,
              color: provider.mode==ThemeMode.light?Colors.white:blackColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    ],
    ),
  ),
)

          ],
        ),
      ]
            );
  }
}