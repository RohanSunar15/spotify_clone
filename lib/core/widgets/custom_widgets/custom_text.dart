import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    super.key,
    this.width,
    this.height,
    this.fontWeight,
    this.fontFamily,
    this.fontSize,
    this.recognizer,
    this.color,
    this.decoration,
    this.textSpan,
  });

  final double? height;
  final double? width;
  final String? text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String? fontFamily;
  final GestureRecognizer? recognizer;
  final Color? color;
  final TextDecoration? decoration;
  final textSpan;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RichText(
        text: TextSpan(
          text: text,
          style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontFamily: fontFamily,
            color: color,
            decoration: decoration,
          ),
          recognizer: recognizer,
        ),
      ),
    );
  }
}
