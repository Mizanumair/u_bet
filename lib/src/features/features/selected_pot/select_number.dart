import 'package:bet_app/src/components/custom_appbar.dart';
import 'package:bet_app/src/components/custom_button.dart';
import 'package:bet_app/src/components/custom_container_with_tex.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/components/custom_multi_container.dart';
import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/components/custom_textfield.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/palette.dart';

class SelectNumber extends StatelessWidget {
  const SelectNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strBack,
        color: AppColors.white,
        containerColor: AppColors.transparent,
        showSuffix: true,
        suffixPress: () {},
        icon: Icons.notifications,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_20,
            ),

            SizedBox(
              height: height_500,
              width: 200,
              child: GridView(
                padding: EdgeInsets.symmetric(horizontal: margin_3),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns in the grid
                    crossAxisSpacing: margin_15, // Spacing between columns
                    mainAxisSpacing: margin_15, // Spacing between rows
                    childAspectRatio: 2
                ),
                children: [
                  for(int i=1; i<60; i++)
                    InkWell(
                      onTap: (){
                        print('\$RS');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(radius_25)),
                        child: Text(
                          '\$50',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    )
                ],
              ),
            ),
            Column(
              children: [
                // CustomDivider(
                //   height: height_30,
                // ),
                CustomButton(
                  width: width_200,
                  text: strSelectAmount,
                  color: AppColors.darkBlue,
                  fontWeight: fontWeight800,
                  font: font_20,
                  onPress: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
