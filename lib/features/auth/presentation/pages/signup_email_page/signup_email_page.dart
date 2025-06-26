import 'package:flutter/material.dart';
import 'package:spotify_clone/core/navigator/app_navigator.dart';
import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';

class SignupEmailPage extends StatefulWidget {
  const SignupEmailPage({super.key});

  @override
  State<SignupEmailPage> createState() => _SignupEmailPageState();
}

class _SignupEmailPageState extends State<SignupEmailPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff1a1a1a),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap:(){
                    AppNavigator.popScreen(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 110,),
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
                Form(
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value){},
                    decoration: const InputDecoration(
                      filled:true,
                      fillColor:  Color(0xff484646),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                const CustomText(
                  text: 'You\'ll need to confirm this email later.',
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: CustomOutlinedButton(
                      onPressed: (){
                      },
                      childWidget:const CustomText(
                      text: 'Next',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                      height: SizeConfig.screenHeight*0.05,
                      width: SizeConfig.screenWidth *0.25,
                      backgroundColor: AppColor.inActiveButtonColor,
                      borderSideColor:AppColor.transparent,
                      borderRadius: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
