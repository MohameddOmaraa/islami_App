import 'package:basics_friday_c11/home/bottom_sheets/language_bottomsheets.dart';
import 'package:basics_friday_c11/home/bottom_sheets/theme_bottomsheets.dart';
import 'package:basics_friday_c11/my_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsTab extends StatefulWidget {

  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Text("Theme"),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap:() {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                context: context, builder: (context) {
                return ThemeBottomsheets();
              },);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color:primaryColor)
              ),
              child: Text("light"),
            ),
          ),
      SizedBox(
        height: 44,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Text("language"),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap:() {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                context: context, builder: (context) {
return LanguageBottomsheets();
              },);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color:primaryColor)
              ),
              child: Text("Arabic"),
            ),
          ),
        ],
      ),
    ],
    )
    );

  }
}
