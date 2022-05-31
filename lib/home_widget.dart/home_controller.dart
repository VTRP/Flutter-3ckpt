import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String bodyText1 = 'toc, toc';
  String bodyText2 = 'É o frio!';

  bool isBodyTextChanged = false;

  changeBodyTextFunction() {
    isBodyTextChanged = !isBodyTextChanged;
    notifyListeners();
  }
}
