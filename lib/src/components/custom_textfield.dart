import 'package:flutter/material.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_divider.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscure,
    required this.height,
    required this.textInputType,
    this.controller,
    this.onChanged,
    this.initialValue,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.showCursor,
    this.lines,
    this.first,
    this.hintText, this.borderCol, this.colFill,
  }) : super(key: key);

  final int? lines;
  final String labelText;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final double height;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final Function()? onTap;
  String? Function(String?)? validator;
  final String? initialValue;
  final String? hintText;
  final bool obscure;
  final bool readOnly;
  final bool? showCursor;
  final bool? first;
  final Color? borderCol;
  final Color? colFill;

  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        first == true
            ? TextFormField(
                maxLines: lines,
                keyboardType: textInputType,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: AppColors.greyColor,
                initialValue: initialValue,
                onChanged: onChanged,
                showCursor: showCursor,
                controller: controller,
                obscureText: obscure,
                validator: validator,
                style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: font_12,
                    fontFamily: 'Jura',
                    fontWeight: fontWeight500),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  hintText: labelText,
                  hintStyle: TextStyle(
                      fontSize: font_12,
                      fontFamily: 'Jura',
                      fontWeight: fontWeight500),
                  prefixIcon: prefixIcon,
                  prefixIconColor: AppColors.greyColor,
                  suffixIcon: suffixIcon,
                  suffixIconColor: AppColors.greyColor,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.transparent),
                      borderRadius: BorderRadius.circular(radius_1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.transparent),
                      borderRadius: BorderRadius.circular(radius_1)),
                ),
                onTap: onTap,
                readOnly: readOnly,
              )
            : TextFormField(
                maxLines: lines,
                keyboardType: textInputType,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: AppColors.greyColor,
                initialValue: initialValue,
                onChanged: onChanged,
                showCursor: showCursor,
                controller: controller,
                obscureText: obscure,
                validator: validator,
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: font_13,
                    fontWeight: fontWeight600),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: margin_20, top: margin_35),
                  filled: true,
                  fillColor: colFill ?? AppColors.white,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: font_13,
                      fontFamily: 'Jura',
                      fontWeight: fontWeight600),
                  labelText: labelText,
                  labelStyle: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: font_12,
                      fontFamily: 'Jura',
                      fontWeight: fontWeight600),
                  prefixIcon: prefixIcon,
                  prefixIconColor: AppColors.darkBlue,
                  suffixIcon: suffixIcon,
                  suffixIconColor: AppColors.darkBlue,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius_12),
                      borderSide: BorderSide(color: borderCol?? AppColors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius_12),
                      borderSide: BorderSide(color: borderCol?? AppColors.white)),
                ),
                onTap: onTap,
                readOnly: readOnly,
              ),
        CustomDivider(
          height: height,
          isDivider: false,
        ),
      ],
    );
  }
}


class EditField extends StatelessWidget {
   EditField({
    Key? key,
     this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscure,
    required this.height,
    required this.textInputType,
    this.controller,
    this.onChanged,
    this.initialValue,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.showCursor,
    this.lines,
    this.first,
    this.hintText,
  }) : super(key: key);

  final int? lines;
  final String? labelText;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final double height;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final Function()? onTap;
  String? Function(String?)? validator;
  final String? initialValue;
  final String? hintText;
  final bool obscure;
  final bool readOnly;
  final bool? showCursor;
  final bool? first;

  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLines: lines,
          keyboardType: textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: AppColors.greyColor,
          initialValue: initialValue,
          onChanged: onChanged,
          showCursor: showCursor,
          controller: controller,
          obscureText: obscure,
          validator: validator,
          style: TextStyle(
              color: AppColors.black,
              fontSize: font_18,
              fontFamily: 'Metropolis',
              fontWeight: fontWeight600),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20, ),
            filled: true,
            fillColor: AppColors.white.withOpacity(.15),
            hintText: labelText,
            hintStyle: TextStyle(
                fontSize: font_12,
                fontFamily: 'Jura',
                fontWeight: fontWeight500),
            prefixIcon: prefixIcon,
            prefixIconColor: AppColors.greyColor,
            suffixIcon: suffixIcon,
            suffixIconColor: AppColors.greyColor,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.transparent),
                borderRadius: BorderRadius.circular(radius_40)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.transparent),
                borderRadius: BorderRadius.circular(radius_40)),
          ),
          onTap: onTap,
          readOnly: readOnly,
        ),
        SizedBox(
          height: height,
        ),
      ],
    );
  }
}
