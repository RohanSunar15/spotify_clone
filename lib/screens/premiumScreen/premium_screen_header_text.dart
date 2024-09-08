import 'package:flutter/material.dart';
import 'package:spotify_clone/constant/color.dart';
import 'package:spotify_clone/customWidget/custom_outlined_button.dart';
import 'package:spotify_clone/customWidget/custom_text.dart';

class PremiumScreenHeaderText extends StatelessWidget {
  const PremiumScreenHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/spotify_logo.png',
              height: 30,
            ),
            const SizedBox(width: 5,),
            const CustomText(
              text: 'Premium',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ],

        ),
        const Padding(
          padding:  EdgeInsets.all(8.0),
          child:  CustomText(
            text: 'Listen Without limits.',
            height: 40,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child:  CustomText(
            text: 'Try 2 months of',
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child:  CustomText(
            text: 'Premium for \u{20B9}119.',
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Center(
            child: CustomOutlinedButton(
              height: 45,
              width: 380,
              childWidget: Text(
                'Get Premium Individual',
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              borderRadius: 20,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:RichText
            (text: const TextSpan(
              style: TextStyle(
                color: subtitleText,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              children: <TextSpan>[
                TextSpan(
                    text:'\u{20B9}119 for 2 months, then \u{20B9}119 per month after.Offer only available if you haven\'t tried Premium before.'),
                TextSpan(
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
      ],
    );
  }
}
