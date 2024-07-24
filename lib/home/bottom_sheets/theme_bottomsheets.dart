import 'package:basics_friday_c11/home/bottom_sheets/mode.dart';
import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:basics_friday_c11/provider/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeBottomsheets extends StatelessWidget {
  const ThemeBottomsheets({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
pro.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("light",style: Theme.of(context).textTheme.bodyMedium,),Icon(Icons.done,size: 30,color: primaryColor,)
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          InkWell(
            onTap: () {
              pro.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark"),Icon(Icons.done,size: 30,color: primaryColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
