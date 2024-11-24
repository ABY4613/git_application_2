// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:git_application_2/utilits/color_constant.dart';
import 'package:git_application_2/utilits/image_constant.dart';
import 'package:git_application_2/view/home_screen/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Timer(Duration(seconds:8), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => HomeScreen(),));
    },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.WHITE,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
             ImageConstants.MYAPPLOGO ,
              height: 140, 
              width: 130,
              fit: BoxFit.contain,
            ),
            
           
          ],
        ),
      ),
    );
  }
}