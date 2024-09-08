import 'package:flutter/material.dart';
import 'package:spotify_clone/constant/color.dart';
import 'package:spotify_clone/screens/premiumScreen/custom_plan_card.dart';

class PremiumPlansCard extends StatelessWidget {
  const PremiumPlansCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomPlanCard(
          planHeaderText: 'Mini',
          planColor: miniPlan,
          planPrice: 29,
          planPeriod: '1week',
          bulletPoints: [
            '\u2022  1 mobile-only Premium account',
            '\u2022  Offline listening of up to 30 songs ',
            '    on 1 device ',
            '\u2022  One-time payment',
            '\u2022  Basic audio quality',
          ],
        ),
        SizedBox(height: 15,),
        CustomPlanCard(
          planHeaderText: 'Individual',
          planColor: individualPlan,
          planPrice: 119,
          planPeriod: '2months',
          bulletPoints: [
            '\u2022  1 Premium account',
            '\u2022  Cancel anytime',
            '\u2022  Subscribe or One-time payment',
          ],
          endText:
              '   \u{20B9}119 for 2 months, then \u{20B9}119 per month after.Offer only available if you haven\'t tried Premium before.',
        ),
        SizedBox(height: 15,),
        CustomPlanCard(
          planHeaderText: 'Family',
          planColor: familyPlan,
          planPrice: 179,
          planPeriod: '2months',
          bulletPoints: [
            '\u2022  Up to 6 Premium accounts',
            '\u2022  Control content marked as explicit',
            '\u2022  Cancel anytime',
            '\u2022  Subscribe or One-time payment',
          ],
          endText:
              '     \u{20B9}179 for 2 months, then \u{20B9}179 per month after.Offer only available if you haven\'t tried Premium before. For up to 6 family members residing at the same address',
        ),
        SizedBox(height: 15,),
        CustomPlanCard(
          planHeaderText: 'Family',
          planColor: familyPlan,
          planPrice: 179,
          planPeriod: '2months',
          bulletPoints: [
            '\u2022  Up to 6 Premium accounts',
            '\u2022  Control content marked as explicit',
            '\u2022  Cancel anytime',
            '\u2022  Subscribe or One-time payment',
          ],
          endText:
              '     \u{20B9}179 for 2 months, then \u{20B9}179 per month after.Offer only available if you haven\'t tried Premium before. For up to 6 family members residing at the same address',
        ),
        SizedBox(height: 15,),
        CustomPlanCard(
          planHeaderText: 'Duo',
          planColor: duoPlan,
          planPrice: 149,
          planPeriod: '2months',
          bulletPoints: [
            '\u2022  2 Premium accounts',
            '\u2022  Cancel anytime',
            '\u2022  Subscribe or One-time payment',
          ],
          endText:
          '     \u{20B9}149 for 2 months, then \u{20B9}149 per month after.Offer only available if you haven\'t tried Premium before. For couples who reside at the same address',
        ),
        SizedBox(height: 15,),
        CustomPlanCard(
          planHeaderText: 'Student',
          planColor: studentPlan,
          planPrice: 59,
          planPeriod: '2months',
          bulletPoints: [
            '\u2022  1 verified Premium accounts',
            '\u2022  Discount for eligible students',
            '\u2022  Cancel anytime',
            '\u2022  Subscribe or One-time payment',
          ],
          endText:
          '     \u{20B9}59 for 2 months, then \u{20B9}59 per month after.Offer available only students at an accredited higher education institution and if you haven\'t tried Premium before' ,
        ),
      ],
    );
  }
}
