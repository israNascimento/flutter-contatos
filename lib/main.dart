import 'package:flutter/material.dart';
import 'Widgets/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Contatos',
      home: new Home(),
    );
  }
}