import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shazam Clone',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData.dark(),
    );
  }
}
