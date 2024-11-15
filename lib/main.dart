import 'dart:io';
import 'package:colorway/AboutScreen/contact.dart';
import 'package:colorway/AboutScreen/cookiepolicy.dart';
import 'package:colorway/AboutScreen/privacypolicy.dart';
import 'package:colorway/AboutScreen/tos.dart';
import 'package:colorway/Intro_screens/about.dart';
import 'package:colorway/Intro_screens/begin.dart';
import 'package:colorway/AboutScreen/developer.dart';
import 'package:colorway/datacolors/colors.dart';
import 'package:colorway/screens/create_screen.dart';
import 'package:colorway/screens/home.dart';
import 'package:colorway/screens/library_screen.dart';
import 'package:colorway/screens/recommendation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ColorWay());
}

class ColorWay extends StatelessWidget {
  const ColorWay({super.key});

  @override
  Widget build(BuildContext context) {
  
   

    return MaterialApp(
      theme: ThemeData().copyWith(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
     
    );
  }
}
