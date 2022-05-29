# learn_provider

Providerを学ぶアプリ

Provider：値が変わるとリアルタイムで他の箇所の値も変化するパッケージ

## 概要

「スマホで動くアプリを作ろう！ゼロから始める Flutter 実践入門 ②：様々なパッケージを使ってみよう」を参照

著者：渋谷 エミリ

## バージョン

Flutter 2.10.5 • channel stable • https://github.com/flutter/flutter.git

Framework • revision 5464c5bac7 (5 weeks ago) • 2022-04-18 09:55:37 -0700

Engine • revision 57d3bac3dd

Tools • Dart 2.16.2 • DevTools 2.9.2

## 使用技術

provider: ^6.0.3

```
// Providerの4.1.0以上の書き方
final model = Provider.of<Model>(context, listen: false) // 以前
final model = context.read<Model>() // 4.1.0以上

final model = Provider.of<Model>(context, listen: true) // 以前
final model = context.watch<Model>() // 4.1.0以上
```

## 機能一覧
