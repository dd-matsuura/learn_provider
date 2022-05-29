import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// with ChangeNotifier
// 変数の状態に変化があれば参照しているwidgetに画面再描画の通知を送る
class K with ChangeNotifier {
  String k = 'text';

  void textChanged(String text) {
    k = text;
    // 一連の処理が終わったことをwidgetに伝え、画面再描画の通知を送る
    notifyListeners();
  }
}
