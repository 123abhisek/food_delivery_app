import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/Walkthrough13.dart';

class Walkthrough12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
            child: Container(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0), // Padding inside the text
                decoration: BoxDecoration(
                  color: Color(0xFFE8E0EA), // Background color for the text
                  borderRadius: BorderRadius.circular(4.0), // Optional: to make the background rounded
                ),
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Color(0xFF6318AF),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          // --------
          SvgPicture.asset(
            'assets/Walkthrough12_img1.svg',
            height: 280,
            width: 280,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20,),
          Text(
            "Exquisite Catering",
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
                "Experience culinary artistry like never before with our innovative and exquisite cuisine creations",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context)=> Walkthrough13())
              );
            },
            child: SvgPicture.asset(
              'assets/Walkthrough12_next_img.svg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
