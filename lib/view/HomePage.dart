import 'package:dogs/Functions.dart';
import 'package:dogs/style/button.dart';
import 'package:dogs/view/GetStarted.dart';
import 'package:dogs/view/Login.dart';
import 'package:dogs/view/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // change 1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Opacity(
          opacity: 0.7,
          child: Stack(
            children: [
              // Background image
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("assets/background_Image/girlWithDog.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Another image on top
              Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 36.0),
                      child: Image.asset(
                        "assets/logo.png",
                        width: 100, // Adjust width/height as needed
                        height: 100,
                      ),
                    ),
                  ),
                  Text("Welcome to Dogie!",
                      style: GoogleFonts.salsa(
                          textStyle: TextStyle(
                        fontSize: 35, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Adjust color if necessary
                      ))),
                  SizedBox(
                    height: 480,
                  ),
                  Column(
                    children: [
                      MyButton(
                        label: "Get Started",
                        onTap: () => GetStarted(),
                        colorbk: yellowClr,
                        colorfg: black,
                      ),
                      MyButton(
                        label: "Login",
                        onTap: () => Login(),
                        colorbk: Colors.transparent,
                        colorfg: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
