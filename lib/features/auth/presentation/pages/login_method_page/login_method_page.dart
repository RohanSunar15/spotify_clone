import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/navigator/app_navigator.dart';
import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/theme/app_icons.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/features/auth/bloc/auth_bloc.dart';
import 'package:spotify_clone/features/auth/presentation/pages/welcome_page/welcome_page.dart';

class LoginMethodPage extends StatefulWidget {
  const LoginMethodPage({super.key});

  @override
  State<LoginMethodPage> createState() => _LoginMethodPageState();
}

class _LoginMethodPageState extends State<LoginMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is OpenWelcomeScreen) {
            AppNavigator.pushReplacementScreen(context, const WelcomePage());
          }
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppColor.backgroundColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<AuthBloc>().add(BackButtonTapped());
                      },
                      child: Icon(
                        AppIcons.arrowBack,
                        size: 30,
                        color: AppColor.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.2),
              Image.asset(
                'assets/images/spotify_logo.png',
                height: SizeConfig.screenHeight * 0.08,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Center(
                child: Text(
                  'Log in to Spotify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenWidth * 0.07,
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
                    Icon(
                      AppIcons.email,
                      color: AppColor.black,
                      size: 30,
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.14),
                    Text(
                      'Continue with email ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.screenHeight * 0.018,
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
              SizedBox(height: SizeConfig.screenHeight * 0.01),

              //continue with the phone
              CustomOutlinedButton(
                onPressed: () {},
                childWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      AppIcons.phone,
                      color: AppColor.white,
                      size: 30,
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.08),
                    Text(
                      'Continue with phone number ',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: SizeConfig.screenHeight * 0.018,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                height: 50,
                borderRadius: 35,
                borderSideColor: AppColor.grey,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),

              //Continue with google
              CustomOutlinedButton(
                onPressed: () {},
                childWidget: Row(
                  children: [
                    Image.asset(
                      'assets/images/google_logo.png',
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.15),
                    Text(
                      'Continue with Google',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenHeight * 0.018,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                height: 55,
                borderRadius: 35,
                borderSideColor: AppColor.grey,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),

              //Continue with facebook
              CustomOutlinedButton(
                onPressed: () {},
                childWidget: Row(
                  children: [
                    Image.asset(
                      'assets/images/facebook_logo.png',
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                    SizedBox(width: SizeConfig.screenWidth * 0.15),
                    Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.screenHeight * 0.018,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                height: 55,
                borderRadius: 35,
                borderSideColor: AppColor.grey,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),

              //Don't have an account
              Text(
                'Don\'t have an account?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenWidth * 0.04,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              InkWell(
                onTap: () {
                  context.read<AuthBloc>().add(LoginTextTapped());
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.screenWidth * 0.045,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
