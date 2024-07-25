import 'dart:developer';

import 'package:flutter/cupertino.dart';
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
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200, // Height of the horizontal scroll area
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ScrollCard(
                          text:
                              'Enjoy your first order, the taste of our delicious food!',
                          text1: 'FIRST',
                          icon: 'assets/ScrollCard_img.png',
                        ),
                        ScrollCard(
                          text:
                              'Enjoy your first order, the taste of our delicious food!',
                          text1: 'SECOND',
                          icon: 'assets/ScrollCard_img1.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Search food or events',
                        border: OutlineInputBorder(), // Add an outline border
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {
                            // Define the search action here
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Start crafting",
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xFF6318AF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: CraftingCard(
                                text: "Default Platters",
                                img: "assets/crafting_img1.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: CraftingCard(
                                text: "Craft Your Own",
                                img: "assets/crafting_img2.png",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 190, // Fixed height for the ListView
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MenuCard(
                          heading: 'Default Menu 1',
                          img: 'assets/Menu_img1.png',
                          amount: 777,
                          min_p: 800,
                        ),
                        MenuCard(
                          heading: 'Default Menu 2',
                          img: 'assets/Menu_img1.png',
                          amount: 777,
                          min_p: 800,
                        ),
                        MenuCard(
                          heading: 'Default Menu 3',
                          img: 'assets/Menu_img1.png',
                          amount: 777,
                          min_p: 800,
                        ),
                        MenuCard(
                          heading: 'Default Menu 4',
                          img: 'assets/Menu_img1.png',
                          amount: 777,
                          min_p: 800,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 190,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top Categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: "Lexend",
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Add some spacing between title and list
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Categories(
                                img: 'assets/starter_img.png',
                                text: "Starters",
                              ),
                              Categories(
                                img: 'assets/drink_img.png',
                                text: "Drinks",
                              ),
                              Categories(
                                img: 'assets/rice_img.png',
                                text: "Rice",
                              ),
                              Categories(
                                img: 'assets/starter_img.png',
                                text: "Curry",
                              ),
                              Categories(
                                img: 'assets/drink_img.png',
                                text: "Drink",
                              ),
                              Categories(
                                img: 'assets/rice_img.png',
                                text: "Rice",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Starters",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Lexend",
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "More Starters",
                                style: TextStyle(
                                  fontFamily: "Lexend",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF6318AF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Add some spacing between title and list
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CardItem(
                                img: 'assets/starter_more_img1.png',
                                text: 'Grill Chicken',
                              ),
                              CardItem(
                                img: 'assets/starter_more_img2.jpeg',
                                text: 'Mashroom Fry',
                              ),
                              CardItem(
                                img: 'assets/starter_more_img2.jpeg',
                                text: 'Veggies Fry',
                              ),
                              CardItem(
                                img: 'assets/starter_more_img1.png',
                                text: 'Veggies Fry',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Main Course",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Lexend",
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "More Main Courses",
                                style: TextStyle(
                                  fontFamily: "Lexend",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF6318AF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Add some spacing between title and list
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CardItem(
                                img: 'assets/main_course_img1.jpeg',
                                text: 'Biryani',
                              ),
                              CardItem(
                                img: 'assets/main_course_img2.jpeg',
                                text: 'Bread',
                              ),
                              CardItem(
                                img: 'assets/main_course_img3.jpeg',
                                text: 'Plain Rice',
                              ),
                              CardItem(
                                img: 'assets/main_course_img4.jpeg',
                                text: 'Plain Rice',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Services",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Lexend",
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 400,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              ServiceCard(
                                img: 'assets/Services_img1.jpeg',
                                tag: 'Signature',
                                subTag1: 'High Quality Disposable Cutlery',
                                subTag2: 'Elegant Decoration & Table Settings',
                                subTag3: 'Served by Waitstaff',
                                subTag4:
                                    'Best for Weddings, Corporate Event...',
                              ),
                              ServiceCard(
                                img: 'assets/Services_img2.jpeg',
                                tag: 'Signature',
                                subTag1: 'High Quality Disposable Cutlery',
                                subTag2: 'Elegant Decoration & Table Settings',
                                subTag3: 'Served by Waitstaff',
                                subTag4:
                                    'Best for Weddings, Corporate Event...',
                              ),
                              ServiceCard(
                                img: 'assets/Services_img3.jpeg',
                                tag: 'Signature',
                                subTag1: 'High Quality Disposable Cutlery',
                                subTag2: 'Elegant Decoration & Table Settings',
                                subTag3: 'Served by Waitstaff',
                                subTag4:
                                    'Best for Weddings, Corporate Event...',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "How does it work ?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Lexend",
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/illustrate1.png",
                              width: 112,
                              height: 86,
                            ),
                            Column(
                              children: [
                                Text(
                                  "Customize Menu",
                                  style: TextStyle(
                                    fontFamily: "Lexend",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xFF6318AF),
                                  ),
                                ),
                                Text(
                                  "Select items for a single event or multiple events",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                    fontFamily: "Lexend",
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
            buildIconWithLabel(
                Icons.food_bank_outlined, "Orders", Colors.black54),
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

class ServiceCard extends StatelessWidget {
  final String img;
  final String tag;
  final String subTag1;
  final String subTag2;
  final String subTag3;
  final String subTag4;

  const ServiceCard({
    Key? key,
    required this.img,
    required this.subTag1,
    required this.subTag2,
    required this.subTag3,
    required this.subTag4,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(right: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  img, // Replace with your PNG image path
                  fit: BoxFit.cover,
                  width: 300,
                  height: 150,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/Signature_svg.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    tag,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Lexend",
                      color: Color(0xFF6318AF),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/Signature_subIcon.svg",
                    height: 12,
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    subTag1,
                    style: TextStyle(
                      fontFamily: "Lexend",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/Signature_subIcon.svg",
                    height: 12,
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    subTag2,
                    style: TextStyle(
                      fontFamily: "Lexend",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/Signature_subIcon.svg",
                    height: 12,
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    subTag3,
                    style: TextStyle(
                      fontFamily: "Lexend",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/Signature_subIcon.svg",
                    height: 12,
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    subTag4,
                    style: TextStyle(
                      fontFamily: "Lexend",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Know More",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Lexend",
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 30,
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Color(0xFF6318AF),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
            child: Text(
              "Recommended",
              style: TextStyle(
                fontFamily: "Lexend",
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  final String img;
  final String text;

  const CardItem({Key? key, required this.text, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
        color: Colors.white, // Card background color
        borderRadius: BorderRadius.circular(10), // Card border radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Grey shadow color
            blurRadius: 8, // Shadow blur radius
            offset: Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), // Radius for the top-left corner
              topRight: Radius.circular(10), // Radius for the top-right corner
            ),
            child: Image.asset(
              img, // Replace with your PNG image path
              fit: BoxFit.cover,
              width: 200,
              height: 80,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Colors.white
                    .withOpacity(0.8), // Background color with opacity
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center, // Center text horizontally
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String img;
  final String text;

  const Categories({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: 5), // Add some margin for spacing
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              img,
              width:
                  80, // Ensure width and height are the same for a circular shape
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5), // Add some spacing between image and text
          Text(
            text,
            style: TextStyle(
              fontFamily: "Lexend",
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String heading;
  final String img;
  final int amount;
  final int min_p;
  final String fontFamily_vl = "Lexend";

  const MenuCard({
    Key? key,
    required this.heading,
    required this.img,
    required this.amount,
    required this.min_p,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      padding: EdgeInsets.all(10), // Add some padding around the card
      constraints: BoxConstraints(
        maxWidth: 160,
      ),
      decoration: BoxDecoration(
        color: Colors.white, // Card background color
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Grey shadow color
            blurRadius: 8, // Shadow blur radius
            offset: Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              fontFamily: fontFamily_vl,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10), // Add spacing
          Container(
            height: 80, // Height for the Stack
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 0,
                  left: -25,
                  child: ClipOval(
                    child: Image.asset(
                      img,
                      width:
                          80, // Ensure width and height are the same for a circular shape
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "3 starters",
                        style: TextStyle(
                          fontFamily: fontFamily_vl,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "3 maincourse",
                        style: TextStyle(
                          fontFamily: fontFamily_vl,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "3 desserts",
                        style: TextStyle(
                          fontFamily: fontFamily_vl,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "3 drinks",
                        style: TextStyle(
                          fontFamily: fontFamily_vl,
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10), // Add spacing
          Row(
            children: [
              Icon(
                Icons.person,
                size: 16,
              ),
              SizedBox(width: 5),
              Text(
                "Min",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: fontFamily_vl,
                  fontSize: 11,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                min_p.toString(), // Convert integer to String
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: fontFamily_vl,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Starts at ₹ ",
                style: TextStyle(
                  fontFamily: fontFamily_vl,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6318AF),
                ),
              ),
              Text(
                amount.toString(), // Convert integer to String
                style: TextStyle(
                  fontFamily: fontFamily_vl,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6318AF),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CraftingCard extends StatelessWidget {
  final String text;
  final String img;

  const CraftingCard({Key? key, required this.text, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardWidth = (MediaQuery.of(context).size.width * 0.5) - 30;

    return Container(
      height: 140,
      width: cardWidth,
      decoration: BoxDecoration(
        color: Colors.white, // Card background color
        borderRadius: BorderRadius.circular(10), // Card border radius
        // border: Border.all(color: Colors.grey), // Border color
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Grey shadow color
            blurRadius: 8, // Shadow blur radius
            offset: Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), // Radius for the top-left corner
              topRight: Radius.circular(10), // Radius for the top-right corner
            ),
            child: Image.asset(
              img, // Replace with your PNG image path
              fit: BoxFit.cover,
              width: cardWidth,
              height: 110,
            ),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Colors.white
                    .withOpacity(0.8), // Background color with opacity
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center, // Center text horizontally
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
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

  const ScrollCard(
      {Key? key, required this.text, required this.text1, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365, // Width of each card
      margin: EdgeInsets.only(left: 16), // Add margin to space out cards
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
        borderRadius:
            BorderRadius.circular(20), // Apply border radius to the image
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
