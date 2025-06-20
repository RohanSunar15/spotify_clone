import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_card.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';


class PremiumScreenCard extends StatelessWidget {
  const PremiumScreenCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: AppColor.cardColor,
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 10, left: 15),
            child: CustomText(
              text: 'Why join Premium?',
              color: AppColor.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
           Divider(
            color: AppColor.cardDividerColor,
            thickness: 2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                child: Image.asset(
                    scale: 0.1,
                    height: 40,
                    "assets/images/icons/ad_free_icon.png"),
              ),
              const CustomText(
                text: 'Ad-free music listening',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                child: Image.asset(
                    scale: 0.1,
                    height: 40,
                    "assets/images/icons/download_icon.png"),
              ),
              const CustomText(
                text: 'Download to listen offline',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                child: Image.asset(
                    scale: 0.1,
                    height: 40,
                    "assets/images/icons/inorder_icon.png"),
              ),
              const CustomText(
                text: 'Play songs in any order',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                child: Image.asset(
                    scale: 0.1,
                    height: 40,
                    "assets/images/icons/headphone_icon.png"),
              ),
              const CustomText(
                text: 'High audio quality',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                child: Image.asset(
                    scale: 0.1,
                    height: 40,
                    "assets/images/icons/friend_icon.png"),
              ),
              const CustomText(
                text: 'Listen with friends in real time',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                child: Image.asset(
                    scale: 0.1,
                    height: 40,
                    "assets/images/icons/queue_icon.png"),
              ),
              const CustomText(
                text: 'Organize listening queue',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
