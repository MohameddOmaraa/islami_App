import 'package:flutter/material.dart';

class AhadeethTab extends StatelessWidget {

  AhadeethTab({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Center(
          child: Column(
              children: [
                Image.asset("assets/imagess/hadeth_logo.png",width: 312,height: 219,),
              ]
          ),
        )
    );
  }
}
//Text("data item ${index+1}");