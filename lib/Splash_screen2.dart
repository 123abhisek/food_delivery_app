import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/Walkthrough11.dart';

import 'main.dart';

class SplashScreen2 extends StatefulWidget{

  @override
  _SplashScreen2State createState() => _SplashScreen2State();

}

class _SplashScreen2State extends State<SplashScreen2>{

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Walkthrough11())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6318AF), // Background color
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
                    height: 141.55,
                    width: 124.62,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Craft My Plate",
                    style: TextStyle(
                      color: Color(0xFFF7E5B7),
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Capriola',
                    ),
                  ),
                  Text(
                    "You customise, We cater",
                    style: TextStyle(
                      color: Color(0xFFF7E5B7),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Capriola',
                      fontStyle: FontStyle.italic,
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