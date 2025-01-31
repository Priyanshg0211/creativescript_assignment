import 'package:creative_scriptassignment/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CreativeScript_Assignment',
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}