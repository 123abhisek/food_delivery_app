// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// class Onboarding4 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: GestureDetector(
//           onTap: () => Navigator.of(context).pop(),
//           child: SvgPicture.asset(
//             'assets/back_btn.svg',
//             height: 150,
//             width: 150,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Text(
//             'Just a step away !',
//             style: TextStyle(
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Lexend',
//               fontSize: 20,
//             ),
//           ),
//           Column(
//             children: [
//               Expanded(
//                 child: TextField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     labelText: 'Full Name',
//                     border: OutlineInputBorder(), // Remove the border of the TextField
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: TextField(
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     labelText: 'Email ID',
//                     border: OutlineInputBorder(), // Remove the border of the TextField
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             width: 300,
//             height: 50,
//             child: ElevatedButton(
//               onPressed: () {
//                 print("Next Page");
//               },
//               child: Text(
//                 'Submit',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFF6318AF),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
// }























import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/HomeScreen.dart';
import 'package:food_delivery_app/OTP_Verification.dart';

class Onboarding4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => OTP_Verification())
          ),
          child: SvgPicture.asset(
            'assets/back_btn.svg',
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Just a step away !',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Lexend',
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email ID',
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=> HomeScreen())
                  ),
                  child: Text(
                    "Let's Start",
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
          ],
        ),
      ),
    );
  }
}
