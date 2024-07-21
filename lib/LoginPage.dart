import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/OTP_Verification.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 310,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(
                    'assets/login_page_shape.svg',
                    fit: BoxFit.fill,
                    height: 587,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/logo_svg.svg',
                        fit: BoxFit.fill,
                        height: 107,
                        width: 107,
                      ),
                      SizedBox(height: 10), // Add some space between the logo and the text
                      Text(
                        "CraftMyPlate",
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Spacer(flex: 2), // Add space from the top
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login or Signup",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Lexend',
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF6318AF),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                '+91',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            SizedBox(width: 12,),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  labelText: 'Enter Phone Number',
                                  border: InputBorder.none, // Remove the border of the TextField
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: 400,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => OTP_Verification())
                            );
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF6318AF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 3), // Add space to push the container to the center
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By continuing, you agree to our",
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Terms of Service Privacy Policy",
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
