import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_card.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';


class CustomPlanCard extends StatelessWidget {
  const CustomPlanCard(
      {super.key,
      this.planHeaderText,
      this.planColor,
      required this.planPrice,
      required this.planPeriod,
      required this.bulletPoints,
        this.endText,
      });

  final String? planHeaderText;
  final Color? planColor;
  final int? planPrice;
  final String? planPeriod;
  final String? endText;
  final List<String> bulletPoints;


  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: AppColor.cardColor,
      childWidget: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/spotify_logo.png',
                  height: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                const CustomText(
                  text: 'Premium',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            CustomText(
              text: planHeaderText,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: planColor,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomText(
              text: '\u{20B9}$planPrice for $planPeriod',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 5,
            ),
            planPrice != null
                ? CustomText(
                    text: '\u{20B9}$planPrice /month after',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColor.subtitleText,
                  )
                :  Container(),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: AppColor.cardDividerColor,
              thickness: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: bulletPoints.map((bulletPoints) {
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 4.0 ,),
                  child: Text(
                    bulletPoints,
                    style:  TextStyle(
                        fontSize: 16,
                      color: AppColor.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20,),
            Center(
              child: CustomOutlinedButton(
                backgroundColor: planColor,
                  borderSideColor: planColor,
                  borderRadius: 30,
                  height: 55,
                  width: 500,
                  childWidget: Text(
                      'Get Premium $planHeaderText',
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
            ),
            const SizedBox(height: 15,),

            planPrice! > 59
                ? Center(
              child: CustomOutlinedButton(
                borderRadius: 30,
                height: 55,
                width: 500,
                childWidget: Text(
                  'One-time payment',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ):const SizedBox(),
            const SizedBox(height: 5,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(
                    style:  TextStyle(
                      color: AppColor.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: endText,
                      ),
                      const TextSpan(
                        text: 'Terms apply.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),


                        // onclick terms apply the web will open
                        // recognizer:
                      ),
                    ]
                )
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
