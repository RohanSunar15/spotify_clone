import 'package:flutter/material.dart';
import 'package:spotify_clone/core/size_config/size_config.dart';
import 'package:spotify_clone/core/theme/app_color.dart';
import 'package:spotify_clone/core/theme/app_icons.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_outlined_button.dart';
import 'package:spotify_clone/core/widgets/custom_widgets/custom_text.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(color: AppColor.white),
          ),
        ),
        leading: Icon(
          AppIcons.arrowBack,
          color: AppColor.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              AppIcons.appAndDevices,
              color: AppColor.white,
              size: 35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                  child: CustomText(
                text: 'Free account',
                fontSize: SizeConfig.screenHeight * 0.02,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CustomOutlinedButton(
                    onPressed: (){
                    },
                    childWidget:  Text(
                      'Go Premium',
                      style: TextStyle(
                        fontSize: SizeConfig.screenHeight * 0.014,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    height: SizeConfig.screenHeight * 0.05,
                    width: SizeConfig.screenWidth * 0.29,
                    backgroundColor: AppColor.white,
                    borderSideColor:AppColor.transparent,
                    borderRadius: 100,
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
