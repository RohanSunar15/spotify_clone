import 'package:flutter/material.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';
import 'package:spotify_clone/features/premium/presentation/widget/premium_plans_card.dart';
import 'package:spotify_clone/features/premium/presentation/widget/premium_screen_card.dart';
import 'package:spotify_clone/features/premium/presentation/widget/premium_screen_header_text.dart';



class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const SingleChildScrollView(
     child: Padding(
       padding: EdgeInsets.all(15.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 200,),
           PremiumScreenHeaderText(),
           SizedBox(height: 30,),

           PremiumScreenCard(),
           SizedBox(height: 30,),
           CustomText(
               text: 'Available plans',
             fontSize: 20,
             fontWeight: FontWeight.bold,
           ),
           SizedBox(height: 25,),
           PremiumPlansCard(),

         ],
       ),
     ),
    );
  }
}
