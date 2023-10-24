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

class SelectAmount extends StatefulWidget {
  const SelectAmount({super.key});

  @override
  State<SelectAmount> createState() => _SelectAmountState();
}

class _SelectAmountState extends State<SelectAmount> {

  final List<String> items = ['1', '5', '10', '50', '100', '500', '1000'];
  final TextEditingController textController = TextEditingController();

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: height_48,
                  width: width_70,
                  decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(radius_10)),
                  child: CustomText(
                      text: '\$',
                      color1: AppColors.golden,
                      fontWeight: fontWeight900,
                      fontSize: font_20),
                ),
                SizedBox(
                    height: width_70,
                    width: width_270,
                    child: CustomTextField(
                        labelText: 'Enter Amount',
                        controller: textController,
                        prefixIcon: null,
                        lines: 1,
                        obscure: false,
                        height: height_10,
                        textInputType: TextInputType.text)),
              ],
            ),
            Container(
              height: height_400,
              width: 200,
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: margin_3),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Number of columns in the grid
                      crossAxisSpacing: margin_15, // Spacing between columns
                      mainAxisSpacing: margin_15, // Spacing between rows
                      childAspectRatio: 2
                  ),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      setState(() {
                        textController.text = items[index];
                      });
                      print('\$RS');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(radius_25)),
                      child: Text(
                        '\$ ${items[index]}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  );
                },
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

