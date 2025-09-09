import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/navigator/app_navigator.dart';
import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';
import 'package:spotify_clone/features/auth/bloc/auth_bloc.dart';

class GenderStep extends StatefulWidget {
  const GenderStep({super.key});

  @override
  State<GenderStep> createState() => _GenderStepState();
}

class _GenderStepState extends State<GenderStep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is OpenGenderScreen) {
            AppNavigator.pushToScreen(context, const GenderStep());
          }
        },
        builder: (context, state) {
          return Column(
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
                padding: EdgeInsets.only(
                    top: SizeConfig.blockWidth * 12,
                    left: SizeConfig.blockWidth * 4,
                    bottom: SizeConfig.blockWidth * 5),
                child: CustomText(
                  text: 'What\'s your gender? ',
                  fontSize: SizeConfig.blockWidth * 9,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Wrap(
                spacing: 5,
                runSpacing: 1,
                children: [
                  CustomOutlinedButton(
                    onPressed: () {},
                    childWidget: CustomText(
                      text: 'Female',
                      fontSize: SizeConfig.blockWidth * 4,
                      fontWeight: FontWeight.bold,
                    ),
                    borderSideColor: AppColor.grey,
                    borderRadius: 100,
                    padding: EdgeInsets.all(
                      SizeConfig.blockWidth * 3,
                    ),
                    overlayColor: AppColor.transparent,
                  ),
                  CustomOutlinedButton(
                    childWidget: CustomText(
                      text: 'Male',
                      fontSize: SizeConfig.blockWidth * 4,
                      fontWeight: FontWeight.bold,
                    ),
                    borderSideColor: AppColor.grey,
                    borderRadius: 100,
                    padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
                  ),
                  CustomOutlinedButton(
                    childWidget: CustomText(
                      text: 'Non-binary',
                      fontSize: SizeConfig.blockWidth * 4,
                      fontWeight: FontWeight.bold,
                    ),
                    borderSideColor: AppColor.grey,
                    borderRadius: 100,
                    padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
                  ),
                  CustomOutlinedButton(
                    childWidget: CustomText(
                      text: 'Other',
                      fontSize: SizeConfig.blockWidth * 4,
                      fontWeight: FontWeight.bold,
                    ),
                    borderSideColor: AppColor.grey,
                    borderRadius: 100,
                    padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
                  ),
                  CustomOutlinedButton(
                    childWidget: CustomText(
                      text: 'Prefer not to say',
                      fontSize: SizeConfig.blockWidth * 4,
                      fontWeight: FontWeight.bold,
                    ),
                    borderSideColor: AppColor.grey,
                    borderRadius: 100,
                    padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
