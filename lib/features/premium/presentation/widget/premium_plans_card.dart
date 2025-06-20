import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_plan_card.dart';

class PremiumPlansCard extends StatelessWidget {
  const PremiumPlansCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child:  Column(
        children: [
          CustomPlanCard(
            planHeaderText: 'Mini',
            planColor: AppColor.miniPlan,
            planPrice: 29,
            planPeriod: '1week',
            bulletPoints: const [
              '\u2022  1 mobile-only Premium account',
              '\u2022  Offline listening of up to 30 songs ',
              '    on 1 device ',
              '\u2022  One-time payment',
              '\u2022  Basic audio quality',
            ],
          ),
          const SizedBox(height: 15,),
          CustomPlanCard(
            planHeaderText: 'Individual',
            planColor: AppColor.individualPlan,
            planPrice: 119,
            planPeriod: '2months',
            bulletPoints: const [
              '\u2022  1 Premium account',
              '\u2022  Cancel anytime',
              '\u2022  Subscribe or One-time payment',
            ],
            endText:
                '   \u{20B9}119 for 2 months, then \u{20B9}119 per month after.Offer only available if you haven\'t tried Premium before.',
          ),
          const SizedBox(height: 15,),
          CustomPlanCard(
            planHeaderText: 'Family',
            planColor: AppColor.familyPlan,
            planPrice: 179,
            planPeriod: '2months',
            bulletPoints: const [
              '\u2022  Up to 6 Premium accounts',
              '\u2022  Control content marked as explicit',
              '\u2022  Cancel anytime',
              '\u2022  Subscribe or One-time payment',
            ],
            endText:
                '     \u{20B9}179 for 2 months, then \u{20B9}179 per month after.Offer only available if you haven\'t tried Premium before. For up to 6 family members residing at the same address',
          ),
          const SizedBox(height: 15,),
          CustomPlanCard(
            planHeaderText: 'Family',
            planColor: AppColor.familyPlan,
            planPrice: 179,
            planPeriod: '2months',
            bulletPoints: const [
              '\u2022  Up to 6 Premium accounts',
              '\u2022  Control content marked as explicit',
              '\u2022  Cancel anytime',
              '\u2022  Subscribe or One-time payment',
            ],
            endText:
                '     \u{20B9}179 for 2 months, then \u{20B9}179 per month after.Offer only available if you haven\'t tried Premium before. For up to 6 family members residing at the same address',
          ),
          const SizedBox(height: 15,),
          CustomPlanCard(
            planHeaderText: 'Duo',
            planColor: AppColor.duoPlan,
            planPrice: 149,
            planPeriod: '2months',
            bulletPoints: const [
              '\u2022  2 Premium accounts',
              '\u2022  Cancel anytime',
              '\u2022  Subscribe or One-time payment',
            ],
            endText:
            '     \u{20B9}149 for 2 months, then \u{20B9}149 per month after.Offer only available if you haven\'t tried Premium before. For couples who reside at the same address',
          ),
          const SizedBox(height: 15,),
          CustomPlanCard(
            planHeaderText: 'Student',
            planColor: AppColor.studentPlan,
            planPrice: 59,
            planPeriod: '2months',
            bulletPoints: const [
              '\u2022  1 verified Premium accounts',
              '\u2022  Discount for eligible students',
              '\u2022  Cancel anytime',
              '\u2022  Subscribe or One-time payment',
            ],
            endText:
            '     \u{20B9}59 for 2 months, then \u{20B9}59 per month after.Offer available only students at an accredited higher education institution and if you haven\'t tried Premium before' ,
          ),
        ],
      ),
    );
  }
}
