import 'package:flutter/material.dart';
//Screens files
import 'screen/items_screen.dart';
//Widgets files
import 'widget//item_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expanses',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.deepOrangeAccent.shade200,
      ),
      home: ItemsScreen() ,
    );
  }
}

