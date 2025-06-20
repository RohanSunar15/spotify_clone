import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/features/auth/presentation/pages/login_method_page/login_method_page.dart';


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
        textSelectionTheme:  TextSelectionThemeData(
          selectionColor: AppColor.selectionColor,
          selectionHandleColor: AppColor.selectionHandleColor,
          cursorColor: AppColor.white,
        )

      ),

      home: const LoginMethodPage(),
    );
  }
}