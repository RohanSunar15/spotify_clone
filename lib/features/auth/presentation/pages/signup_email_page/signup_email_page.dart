import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/navigator/app_navigator.dart';
import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';
import 'package:spotify_clone/features/auth/bloc/auth_bloc.dart';

class SignupEmailPage extends StatefulWidget {
  const SignupEmailPage({super.key});

  @override
  State<SignupEmailPage> createState() => _SignupEmailPageState();
}

class _SignupEmailPageState extends State<SignupEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isFocused = _focusNode.hasFocus;

    return Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    AppNavigator.popScreen(context);
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
                  text: 'What\'s your email address?',
                  color: Colors.white,
                  fontSize: SizeConfig.screenHeight * 0.032,
                  fontWeight: FontWeight.bold,
                ),
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  child: Form(
                      child: TextFormField(
                    controller: _emailController,
                    focusNode: _focusNode,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: AppColor.white),
                    onChanged: (value) {
                      context.read<AuthBloc>().add(EmailChanged(value));
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: isFocused
                          ? AppColor.inActiveTextFieldColor
                          : AppColor.activeTextFieldColor,
                      border: InputBorder.none,
                    ),
                  )),
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomText(
                  text: 'You\'ll need to confirm this email later.',
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    bool isEmailValid = false;

                    if (state is EmailValid) {
                      isEmailValid = state.isEmailValid;
                    }
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: CustomOutlinedButton(
                          onPressed: () {},
                          childWidget: const CustomText(
                            text: 'Next',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          height: SizeConfig.screenHeight * 0.05,
                          width: SizeConfig.screenWidth * 0.25,
                          backgroundColor: isEmailValid
                              ? AppColor.white
                              : AppColor.inActiveButtonColor,
                          overlayColor: AppColor.transparent,
                          borderSideColor: AppColor.transparent,
                          borderRadius: 100,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
