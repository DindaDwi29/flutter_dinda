import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:masakan_sunda/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Resep Masakan Sunda",
      theme: ThemeData.light(),
       home: SplashScreenView(
        navigateRoute: MainScreen(),
        duration: 9000,
        imageSize: 150,
        imageSrc: "assets/images/logo.png",
        backgroundColor: Colors.white,
        text: "Resep Masakan Sunda \n Dinda Dwi Octaviani \n Projek Ujikom",
        textType: TextType.TyperAnimatedText,
        textStyle: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}

