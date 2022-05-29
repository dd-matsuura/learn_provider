import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'k.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => K()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Page1());
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Providerの4.1.0以上の書き方
        // final model = Provider.of<Model>(context, listen: true) の代わりに、
        // final model = context.watch<Model>() に変更
        title: Text(context.watch<K>().k),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: const [
            Page2(),
            SizedBox(height: 16),
            Page3(),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText) {
        // Providerの4.1.0以上の書き方
        // final model = Provider.of<Model>(context, listen: false) の代わりに、
        // final model = context.read<Model>() に変更
        context.read<K>().textChanged(newText);
        print(context.read<K>().k);
      },
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<K>(context).k);
  }
}
