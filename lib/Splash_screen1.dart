import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

import 'package:food_delivery_app/main.dart';
import 'Splash_screen2.dart';

class Splash_screen1 extends StatefulWidget {

  @override
  _Splash_screen1State createState() => _Splash_screen1State();

}

class _Splash_screen1State extends State<Splash_screen1> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SplashScreen2())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7E5B7), // Background color
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/background_svg.svg',
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/logo_svg.svg',
                    height: 110,
                    width: 88,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Color(0xFFF7E5B7),
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Capriola', // Use your custom font family
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
