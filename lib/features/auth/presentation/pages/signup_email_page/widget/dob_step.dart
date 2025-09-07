import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';
import 'package:spotify_clone/features/auth/bloc/auth_bloc.dart';

class SignupDobStep extends StatefulWidget {
  const SignupDobStep({super.key});

  @override
  State<SignupDobStep> createState() => _SignupDobStepState();
}

class _SignupDobStepState extends State<SignupDobStep> {
  int selectedDay = 5;
  int selectedMonth = 5;
  int selectedYear = 1990;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {},
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
                  text: 'What\'s your date of birth? ',
                  fontSize: SizeConfig.blockWidth * 9,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Day Picker
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockWidth * 1),
                    width: 70,
                    height: 130,
                    child: CupertinoPicker(
                      itemExtent: 65,
                      magnification: 0.9,
                      useMagnifier: true,
                      scrollController: FixedExtentScrollController(
                          initialItem: selectedDay - 1),
                      selectionOverlay: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            top: BorderSide(color: AppColor.grey, width: 2),
                            bottom: BorderSide(color: AppColor.grey, width: 2),
                          ),
                        ),
                      ),
                      onSelectedItemChanged: (int index) {
                        setState(() => selectedDay = index + 1);
                      },
                      children: List.generate(
                        31,
                        (index) => Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.blockWidth * 2),
                            child: CustomText(
                              text: "${index + 1}",
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 3,
                  ),
                  // Month Picker
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockWidth * 1),
                    width: 70,
                    height: 130,
                    child: CupertinoPicker(
                      itemExtent: 65,
                      magnification: 0.9,
                      useMagnifier: true,
                      scrollController: FixedExtentScrollController(
                          initialItem: selectedMonth - 1),
                      selectionOverlay: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            top: BorderSide(color: AppColor.grey, width: 2),
                            bottom: BorderSide(color: AppColor.grey, width: 2),
                          ),
                        ),
                      ),
                      onSelectedItemChanged: (int index) {
                        setState(() => selectedMonth = index + 1);
                      },
                      children: const [
                        Center(
                            child: CustomText(
                          text: 'Jan',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Feb',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Mar',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Apr',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'May',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Jun',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Jul',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Aug',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Sep',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Oct',
                          fontSize: 20,
                        )),
                        Center(
                            child: CustomText(
                          text: 'Nov',
                          fontSize: 20,
                        )),
                        Center(
                          child: CustomText(
                            text: 'Dec',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 3,
                  ),
                  // Year Picker
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockWidth * 1),
                    width: 70,
                    height: 130,
                    child: CupertinoPicker(
                      itemExtent: 65,
                      magnification: 0.9,
                      useMagnifier: true,
                      scrollController: FixedExtentScrollController(
                          initialItem: selectedYear - 1980),
                      selectionOverlay: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                            top: BorderSide(color: AppColor.grey, width: 2),
                            bottom: BorderSide(color: AppColor.grey, width: 2),
                          ),
                        ),
                      ),
                      onSelectedItemChanged: (int index) {
                        setState(() => selectedYear = 1980 + index);
                      },
                      children: List.generate(
                          50,
                          (index) => Center(
                                child: CustomText(
                                  text: "${1980 + index}",
                                  fontSize: 20,
                                ),
                              )),
                    ),
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
