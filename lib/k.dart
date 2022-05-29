import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class K with ChangeNotifier {
  String k = 'text';

  void textChanged(String text) {
    k = text;
    notifyListeners();
  }
}
