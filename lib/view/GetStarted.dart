import 'package:dogs/Functions.dart';
import 'package:dogs/style/TextField.dart';
import 'package:dogs/style/button.dart';
import 'package:dogs/view/HomePage.dart';
import 'package:dogs/view/Login.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenHeight*0.02),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                image: DecorationImage(
                  image:
                  AssetImage("assets/background_Image/Dog.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            TextFieldMe(
                label: "Enter Email",
                icon:Icon(Icons.email_outlined),
            ),
            TextFieldMe(
              label: "Enter Password",
              icon:Icon(Icons.lock_outline),
            ),
            TextFieldMe(
              label: "Enter Password Again",
              icon:Icon(Icons.lock_outline),
            ),
            SizedBox(height: screenHeight*0.07,),
            MyButton(
                label: "Register",
                onTap: () => HomePage(),
                colorbk: yellowClr,
                colorfg: black,
              width: 180,
              height: 50,
            ),
            SizedBox(height: screenHeight*0.04,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login()),
                );
              },
                child: Text("Already have account ? Login")
            ),
          ],
        ),
      ),
    );
  }
}
