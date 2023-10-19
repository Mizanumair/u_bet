import 'package:bet_app/src/components/custom_button.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_textfield.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Image.asset(ImgAssets.lineCol, fit: BoxFit.fill)),
                Positioned(
                  top: margin_50,
                  left: margin_120,
                  child: CustomText(
                      text: strWelcomeBack,
                      color1: AppColors.white,
                      fontWeight: fontWeight600,
                      fontSize: font_45),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: margin_45, right: margin_45, top: margin_280),
                  child: Column(
                    children: [
                      CustomTextField(
                          labelText: strEmail,
                          prefixIcon: null,
                          hintText: strEmail,
                          obscure: false,
                          height: height_25,
                          textInputType: TextInputType.text),
                      CustomTextField(
                          labelText: strPassword,
                          prefixIcon: null,
                          hintText: strPassword,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye),
                            color: AppColors.darkBlue,
                          ),
                          obscure: false,
                          height: height_50,
                          textInputType: TextInputType.text),
                      CustomButton(
                        width: width_270,
                          text: strLogin,
                          color: AppColors.white,
                          fontWeight: fontWeight600,
                          font: font_18,
                        buttonRadius: true,
                        buttonColor: AppColors.pink,
                      ),

                    ],
                  ),
                ),

              ],
            ),
            CustomDivider(
              height: height_40,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset(ImgAssets.dollarGolden, fit: BoxFit.fill)),

          ],
        ),
      ),
    );
  }
}
