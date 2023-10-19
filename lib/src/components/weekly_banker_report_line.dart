import 'package:flutter/material.dart';

import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_text.dart';

class BankerReportLine extends StatelessWidget {
  const BankerReportLine({
    Key? key,
    this.sNo,
    required this.date,
    required this.rBet,
    required this.mBet,
    required this.sales,
    this.wins,
    this.diffs,
    this.lineCol,
    this.textCol, this.col,
  }) : super(key: key);

  final String? sNo;
  final String date;
  final String rBet;
  final String mBet;
  final String sales;
  final String? wins;
  final String? diffs;
  final Color? lineCol;
  final Color? textCol;
  final bool? col;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: margin_20),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: lineCol ?? AppColors.darkBlue))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            child: CustomText(
                text: sNo!,
                color1: textCol ?? AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_11),
          ),
          Container(
            alignment: Alignment.center,
            width: 90,
            child: CustomText(
                text: date,
                color1: textCol ?? AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_12),
          ),
          Container(
            alignment: Alignment.center,
            width: 40,
            child: CustomText(
                text: rBet,
                color1: textCol ?? AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_12),
          ),
          Container(
            alignment: Alignment.center,
            width: 50,
            child: CustomText(
                text: mBet,
                color1: textCol ?? AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_12),
          ),
          Container(
            alignment: Alignment.center,
            width: 40,
            child: CustomText(
                text: sales,
                color1: textCol ?? AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_12),
          ),
          Container(
            alignment: Alignment.center,
            width: 40,
            child: CustomText(
              textAlign: TextAlign.center,
                text: wins!,
                color1: textCol ?? AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_12),
          ),
          col==true? SizedBox(): Container(
            alignment: Alignment.center,
            width: 40,
            child: CustomText(
                text: diffs!,
                color1: textCol ?? AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_12),
          ),
        ],
      ),
    );
  }
}
