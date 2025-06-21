import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/features/auth/bloc/auth_bloc.dart';
import 'package:spotify_clone/features/auth/presentation/pages/welcome_page/welcome_page.dart';


void main() {
  runApp(
    MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => AuthBloc(),
      ),
    ],
    child: const MyApp(),
  ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

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
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}