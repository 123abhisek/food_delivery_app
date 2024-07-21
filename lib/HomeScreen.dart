import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Abhishek!",
                          style: TextStyle(
                            color: Color(0xFF6318AF),
                            fontFamily: 'Lexend',
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Current location",
                                  style: TextStyle(
                                    fontFamily: "Lexend",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13,
                                    color: Color(0xFF7B7B7B),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/location_icon.svg",
                                      height: 10,
                                      width: 12,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      "Hyderabad",
                                      style: TextStyle(
                                        fontFamily: 'Lexend',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/play_icon.svg",
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  "How it works?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Lexend'),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Container(
                    height: 200, // Height of the horizontal scroll area
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ScrollCard(
                          text: 'Enjoy your first order, '
                              'the taste of our delicious '
                              'food!',
                          text1: 'FIRST',
                          icon:'assets/ScrollCard_img.png',
                        ),// Space between cards
                        ScrollCard(
                          text: 'Enjoy your first order, '
                              'the taste of our delicious '
                              'food!',
                          text1: 'SECOND',
                          icon:'assets/ScrollCard_img1.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 1.0,
        color: Colors.white,
        shadowColor: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildIconWithLabel(Icons.home, "Home", Colors.deepPurple),
            buildIconWithLabel(Icons.favorite, "Wishlist", Colors.black54),
            buildIconWithLabel(Icons.food_bank_outlined, "Orders", Colors.black54),
            buildIconWithLabel(Icons.person, "Profile", Colors.black54),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 65, // Size of the FloatingActionButton
        height: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF6318AF), // Background color of the button
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/logo_svg.svg', // Path to your SVG asset
            width: 40, // Size of the icon
            height: 40, // Color of the SVG icon
          ),
        ),
      ),
    );
  }

  Widget buildIconWithLabel(IconData icon, String label, Color color) {
    return SizedBox(
      width: 60, // Fixed width for each icon with label
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Center align content
        children: [
          Icon(
            icon,
            color: color,
            size: 24, // Adjust the icon size if needed
          ),
          SizedBox(height: 4), // Space between icon and text
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54, // Change text color if needed
            ),
            textAlign: TextAlign.center, // Center align text
          ),
        ],
      ),
    );
  }



}



class ScrollCard extends StatelessWidget {
  final String text;
  final String text1;
  final String icon;

  const ScrollCard({Key? key, required this.text, required this.text1, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365, // Width of each card
      margin: EdgeInsets.only(left: 16,), // Add margin to space out cards
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Border radius
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Apply border radius to the image
        child: Stack(
          children: [
            Image.asset(
              icon, // Replace with your PNG image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Text(
                text1,
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
