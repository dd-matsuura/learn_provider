import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class K extends ChangeNotifier {
  static String k = 'text';

  void TextChanged(String text) {
    k = text;
    notifyListeners();
  }
}
