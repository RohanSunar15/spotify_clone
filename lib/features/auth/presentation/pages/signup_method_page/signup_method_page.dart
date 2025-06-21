import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/features/auth/presentation/pages/login_phone_number_page/login_phone_number_page.dart';

class SignupMethodPage extends StatefulWidget {
  const SignupMethodPage({super.key});

  @override
  State<SignupMethodPage> createState() => _SignupMethodPageState();
}

class _SignupMethodPageState extends State<SignupMethodPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        decoration:  BoxDecoration(
          color: AppColor.black
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Icon(Icons.arrow_back,
                    size: 30,
                    color: AppColor.white,

                   ),
                 ],
               ),
             ),
            SizedBox(height: screenHeight * 0.2),
            Image.asset(
              'assets/images/spotify_logo.png',
              height: screenHeight * 0.08,
            ),
            SizedBox(height: screenHeight * 0.03),
            Center(
              child: Text(
                'Sign up to start listening',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),

            //Continue with email
            CustomOutlinedButton(
              onPressed: () {},
              childWidget: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Icon(Icons.email_outlined ,color: AppColor.black,size: 30,),
                   SizedBox(width: screenWidth * 0.14),
                   const Text(
                    'Continue with email ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              height: 50,
              backgroundColor: AppColor.green,
              borderSideColor: AppColor.green,
              borderRadius: 30,
              overlayColor: AppColor.black,
            ),
            SizedBox(height: screenHeight * 0.01),
            //continue with the phone
            CustomOutlinedButton(
              onPressed: () {},
              childWidget: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.phone_android_outlined ,color: AppColor.white,size: 30,),
                  SizedBox(width: screenWidth * 0.08),
                   Text(
                    'Continue with phone number ',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              height: 50,
              borderRadius: 35,
              borderSideColor: AppColor.grey,
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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              height: 55,
              borderRadius: 35,
              borderSideColor: AppColor.grey,
            ),
            SizedBox(height: screenHeight * 0.04),
            const Text(
              'Already have an account?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            
            InkWell(
              onTap: () {},
              child: const Text(
                'Log in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
