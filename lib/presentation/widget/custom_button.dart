import 'package:flutter/material.dart';
import 'package:perpus/utils/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final double fontSize;
  final Function() onPressed;
  final EdgeInsets margin;
  const CustomButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 100,
    this.fontSize = 48,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          title,
          style: defaultTextStyle.copyWith(
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
