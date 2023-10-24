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
import 'package:bet_app/src/features/features/selected_pot/selected_pot.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/palette.dart';

class SelectNumber extends StatefulWidget {
  const SelectNumber({super.key});

  @override
  State<SelectNumber> createState() => _SelectNumberState();
}

class _SelectNumberState extends State<SelectNumber> {


  final List<String> items =
      List.generate(99, (index) => (index + 1).toString());
  String selectedNumber = "";


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
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  CustomDivider(
                    height: height_20,
                  ),
                  Container(
                    height: height_500,
                    width: MediaQuery.of(context).size.width*.9,
                    child: GridView.builder(
                      padding: EdgeInsets.symmetric(horizontal: margin_3),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, // Number of columns in the grid
                          crossAxisSpacing:
                              margin_15, // Spacing between columns
                          mainAxisSpacing: margin_15, // Spacing between rows
                          childAspectRatio: 2),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print('${items[index]}');
                            setState(() {
                              selectedNumber = items[index];
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(radius_25)),
                            child: Text(
                              '${items[index]}',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Column(
                      children: [
                        CustomButton(
                          width: width_200,
                          text: 'Select Number',
                          color: AppColors.darkBlue,
                          fontWeight: fontWeight800,
                          font: font_20,
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SelectedPot(selectedItem: selectedNumber),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
