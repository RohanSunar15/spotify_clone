import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.childWidget,
    this.height,
    this.width,
    this.color,
    this.shadowColor,
    this.shape,
    this.surfaceTintColor,
    this.clipBehavior,
    this.elevation,
    this.margin
  });

  final double? height;
  final double? width;
  final Color? color;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final Color? surfaceTintColor;
  final Clip? clipBehavior;
  final double? elevation;
  final EdgeInsetsGeometry? margin;


  final Widget? childWidget;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width : width,
      child: Card(
        color: color,
        shadowColor: shadowColor,
        shape: shape,
        surfaceTintColor: surfaceTintColor,
        clipBehavior: clipBehavior,
        elevation: elevation,
        margin: margin,
        child: childWidget,
      ),
    );
  }
}
