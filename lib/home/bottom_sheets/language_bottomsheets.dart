import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:flutter/material.dart';

class LanguageBottomsheets extends StatelessWidget {
  const LanguageBottomsheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      Text("Arabic",style: Theme.of(context).textTheme.bodyMedium,),Icon(Icons.done,size: 30,color: primaryColor,)
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English",),Icon(Icons.done,size: 30,color: primaryColor,)
            ],
          )
        ],
      ),
    );
  }
}
