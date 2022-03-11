import 'package:flutter/material.dart';
import 'package:masakan_sunda/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Resep Masakan Sunda",
      theme: ThemeData.light(),
      home: MainScreen(),
    );
  }
}

