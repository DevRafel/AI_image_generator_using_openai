// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_generator/colors.dart';
import 'package:image_generator/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
          fontFamily: 'poppins',
          scaffoldBackgroundColor: bgColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          )),
    );
  }
}
