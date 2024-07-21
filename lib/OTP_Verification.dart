import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/LoginPage.dart';
import 'package:food_delivery_app/Onboarding4.dart';

class OTP_Verification extends StatefulWidget {
  @override
  _OTP_VerificationState createState() => _OTP_VerificationState();
}

class _OTP_VerificationState extends State<OTP_Verification> {
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F6F0),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginPage())),
          child: SvgPicture.asset(
            'assets/back_btn.svg',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
        flexibleSpace: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              'OTP Verification',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'We have sent a verification code to',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '+91-XXXXXX6794',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Lexend',
                  ),
                ),
                SizedBox(width: 5), // Adding some space between text and icon
                SvgPicture.asset(
                  'assets/green_tick.svg',
                  height: 20,
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildOTPTextField(0),
                SizedBox(
                  width: 10,
                ),
                _buildOTPTextField(1),
                SizedBox(
                  width: 10,
                ),
                _buildOTPTextField(2),
                SizedBox(
                  width: 10,
                ),
                _buildOTPTextField(3),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Onboarding4()));
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
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive code ?",
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => print("Resend the OTP"),
                  child: Text(
                    'Resend Again',
                    style: TextStyle(
                      color: Color(0xFF6318AF),
                      fontFamily: 'Lexend',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF7F6F0),
    );
  }

  Widget _buildOTPTextField(int index) {
    return Container(
      width: 50,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            if (index + 1 < _focusNodes.length) {
              FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
            } else {
              _focusNodes[index].unfocus();
            }
          }
        },
      ),
    );
  }
}
