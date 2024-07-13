import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:
      Center(
        child: Stack(
          alignment: Alignment.center ,
          children: [
            Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/imagess/head_sebha_logo.png"),
              ),
              Transform.rotate(angle: _counter*3.14159/180,
              child: Image.asset("assets/imagess/body_sebha_logo.png")),
               Text(
                   ("عدد التسبيحات"),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                           ),
              const SizedBox(height: 20),
              Text(
                _counter.toString(),
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor:Color(0xFFB7935F),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
                child:  Text(
                  _tasbeeh[textIndex],
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
            ],
          ),
        ]
      ),
    )
    );
  }
}