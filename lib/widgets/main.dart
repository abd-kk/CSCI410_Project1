import 'package:flutter/material.dart';
import "package:project1/screens/home.dart";

// partner: abdallah korhani
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: "flutter demo", home: Home());
  }
}
