import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/navigator/app_navigator.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/features/auth/bloc/auth_bloc.dart';
import 'package:spotify_clone/features/auth/presentation/pages/login_method_page/login_method_page.dart';
import 'package:spotify_clone/features/auth/presentation/pages/signup_method_page/signup_method_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if(state is OpenSignupMethodScreen){
          AppNavigator.pushToScreen(context, const SignupMethodPage());
        } else if(state is OpenLoginMethodScreen){
          AppNavigator.pushToScreen(context, const LoginMethodPage());
        }
      },
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(25),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColor.welcomePageBackgroundColor,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.30),
              Image.asset(
                'assets/images/spotify_logo.png',
                height: SizeConfig.screenHeight * 0.08,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Center(
                child: Text(
                  'Millions of songs.',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: SizeConfig.screenHeight * 0.032,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Free on Spotify.',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: SizeConfig.screenWidth * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),

              //Sign up for free
              CustomOutlinedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(SignupButtonTapped());
                },
                childWidget: Text(
                  'Sign up for free ',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: SizeConfig.screenHeight * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                height: SizeConfig.screenHeight * 0.06,
                backgroundColor: AppColor.green,
                borderSideColor: AppColor.green,
                borderRadius: 30,
                overlayColor: AppColor.black,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              CustomOutlinedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(LoginButtonTapped());
                },
                childWidget: Padding(
                  padding:
                  EdgeInsets.symmetric(
                      vertical: SizeConfig.screenHeight * 0.003),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: SizeConfig.screenHeight * 0.018,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                height: SizeConfig.screenHeight * 0.06,
                borderRadius: 35,
                borderSideColor: AppColor.grey,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
