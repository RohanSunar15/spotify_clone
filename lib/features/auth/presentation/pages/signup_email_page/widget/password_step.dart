import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/navigator/app_navigator.dart';
import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';
import 'package:spotify_clone/features/auth/bloc/auth_bloc.dart';
import 'package:spotify_clone/features/auth/presentation/pages/signup_email_page/widget/dob_step.dart';

class SignupCreatePasswordPage extends StatelessWidget {
  const SignupCreatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is OpenDobScreen) {
            AppNavigator.pushToScreen(context, const SignupDobStep());
          }
        },
        builder: (context, state) {
          bool isPasswordValid = false;
          bool isError = false;

          if (state is PasswordValid) {
            isPasswordValid = state.isPasswordValid;
          }

          if (state is PasswordTooShort) {
            isError = true;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<AuthBloc>().add(BackButtonTapped());
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    CustomText(
                      text: 'Create account',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenHeight * 0.02,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Create a password',
                      color: Colors.white,
                      fontSize: SizeConfig.screenHeight * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                    Form(
                        child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      style: TextStyle(color: AppColor.white),
                      onChanged: (value) {
                        context.read<AuthBloc>().add(PasswordChanged(value));
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.passwordTextField,
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                          color: AppColor.white,
                        ),
                      ),
                    )),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomText(
                      text: 'Use at least 10 characters.',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: CustomOutlinedButton(
                          onPressed: () {
                            if (isPasswordValid == true) {
                              context
                                  .read<AuthBloc>()
                                  .add(PasswordNextButtonTapped());
                            }
                          },
                          childWidget: const CustomText(
                            text: 'Next',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          height: SizeConfig.screenHeight * 0.05,
                          width: SizeConfig.screenWidth * 0.25,
                          backgroundColor: isPasswordValid
                              ? AppColor.white
                              : AppColor.inActiveButtonColor,
                          overlayColor: AppColor.transparent,
                          borderSideColor: AppColor.transparent,
                          borderRadius: 100,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
