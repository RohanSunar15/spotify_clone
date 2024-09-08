import 'package:flutter/material.dart';
import 'package:spotify_clone/Phonenumber%20Screen/model/country_code_screen.dart';
import 'package:spotify_clone/constant/color.dart';
import 'package:spotify_clone/screens/premiumScreen/premium_screen.dart';

import 'package:spotify_clone/user_login.dart';
import 'package:spotify_clone/user_signup.dart';
import 'package:spotify_clone/Phonenumber Screen/number_verification_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: selectionColor,
          selectionHandleColor: selectionHandleColor,
          cursorColor: white,
        )

      ),

      home: const PremiumScreen(),
    );
  }
}