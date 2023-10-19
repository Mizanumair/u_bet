import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.text,
    required this.hor,
    required this.ver,
    this.col,
    this.colText, this.onTap,
  }) : super(key: key);

  final String text;
  final double hor;
  final double ver;
  final Color? col;
  final Color? colText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: hor,
          vertical: ver,
        ),
        decoration: BoxDecoration(
          color: col ?? AppColors.darkBlue,
          borderRadius: BorderRadius.circular(radius_8),
        ),
        child: CustomText(
            text: text,
            color1: colText ?? AppColors.white,
            fontWeight: fontWeight800,
            fontSize: font_13),
      ),
    );
  }
}
