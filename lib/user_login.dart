import 'package:flutter/material.dart';
import 'package:spotify_clone/PhonenumberScreen/number_verification_screen.dart';
import 'package:spotify_clone/constant/color.dart';
import 'package:spotify_clone/user_signup.dart';
import 'package:spotify_clone/customWidget/custom_outlined_button.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff484646),
              Color(0xff2d2c2c),
              Color(0xff1c1c1c),
              Color(0xff1c1c1c),
              Color(0xff1c1c1c),
              Color(0xff1c1c1c),
              Color(0xff1c1c1c),
              Color(0xff1c1c1c),
              Color(0xff1c1c1c),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.17),
            Image.asset(
              'assets/images/spotify_logo.png',
              height: screenHeight * 0.08,
            ),
            SizedBox(height: screenHeight * 0.11),
            Text(
              'Millions of songs.',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Free on Spotify.',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.09),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  //Sign up for free
                  CustomOutlinedButton(
                    onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpPage()),
                      );

                    },
                      childWidget: const Text('Sign up for free ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    height: 55,
                    backgroundColor: green,
                    borderSideColor: green,
                    borderRadius: 30 ,
                    overlayColor: black,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  //continue with the phone
                  CustomOutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PhoneNumberScreen()),
                      );
                    },
                      childWidget: Padding(
                        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.003),
                        child: const Row(
                          children: [
                            const Icon(
                              Icons.phone_android_outlined,
                              color: Colors.white,
                            ),
                            const Text(
                              'Continue with phone number',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    height: 55,
                    borderRadius: 35,
                    borderSideColor: grey,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  //Continue with google


                  CustomOutlinedButton(
                    onPressed: () {},
                    childWidget: Row(
                      children: [
                        Image.asset(
                          'assets/images/google_logo.png',
                          height: screenHeight * 0.03,
                        ),
                        SizedBox(width: screenWidth * 0.1),
                        const Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height: 55,
                    borderRadius: 35,
                    borderSideColor: grey,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  CustomOutlinedButton(
                    onPressed: () {},
                    childWidget: Row(
                      children: [
                        Image.asset(
                          'assets/images/facebook_logo.png',
                          height: screenHeight * 0.03,
                        ),
                        SizedBox(width: screenWidth * 0.1),
                        const Text(
                          'Continue with Facebook',
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height: 55,
                    borderRadius: 35,
                    borderSideColor: grey,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
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