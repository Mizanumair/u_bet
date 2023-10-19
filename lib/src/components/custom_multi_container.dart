import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/palette.dart';
import 'package:flutter/material.dart';

class CustomMultiUseContainer extends StatelessWidget {
  const CustomMultiUseContainer({
    Key? key,
    required this.ver,
    required this.hor,
    required this.simpleRow,
    this.col, this.width,
  }) : super(key: key);

  final Row simpleRow;
  final double ver;
  final double hor;
  final double? width;
  final Color? col;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: ver, horizontal: hor),
      decoration: BoxDecoration(
        color: col ?? AppColors.white,
        borderRadius: BorderRadius.circular(radius_10),
      ),
      child: simpleRow,
    );
  }
}
