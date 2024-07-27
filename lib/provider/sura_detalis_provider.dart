import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SuraDetalisProvider extends ChangeNotifier{
  List <String> verses=[];
  loadSuraFile(int index)async{
    String sura=await rootBundle.loadString("assets/files/${index+1}.txt");
    List <String> suralines=sura.split("\n");
    print(suralines);
    verses=suralines;
notifyListeners();
  }
}