import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProvider extends ChangeNotifier{
  ThemeMode mode=ThemeMode.light;
  changeTheme(ThemeMode themeMode){
mode=themeMode;
notifyListeners();
  }
}