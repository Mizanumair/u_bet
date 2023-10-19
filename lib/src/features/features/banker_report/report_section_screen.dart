import 'package:bet_app/src/components/custom_appbar.dart';
import 'package:bet_app/src/components/custom_button.dart';
import 'package:bet_app/src/components/custom_container_with_tex.dart';
import 'package:bet_app/src/components/custom_divider.dart';
import 'package:bet_app/src/components/custom_multi_container.dart';
import 'package:bet_app/src/components/custom_text.dart';
import 'package:bet_app/src/components/delete_dialog.dart';
import 'package:bet_app/src/components/mega_amount_dialog.dart';
import 'package:bet_app/src/components/report_section_chip.dart';
import 'package:bet_app/src/components/weekly_banker_report_line.dart';
import 'package:bet_app/src/core/constants/dimensions.dart';
import 'package:bet_app/src/core/constants/font_weight.dart';
import 'package:bet_app/src/core/constants/strings.dart';
import 'package:bet_app/src/features/features/banker_report/report_section_screen.dart';
import 'package:bet_app/src/features/features/selected_pot/sale_confirmation.dart';
import 'package:bet_app/src/features/features/selected_pot/select_amount.dart';
import 'package:bet_app/src/features/features/selected_pot/select_number.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants/palette.dart';

class ReportSectionScreen extends StatefulWidget {
  const ReportSectionScreen({super.key});

  @override
  State<ReportSectionScreen> createState() => _ReportSectionScreenState();
}

class _ReportSectionScreenState extends State<ReportSectionScreen> {
  DateTimeRange _selectedDateRange =
      DateTimeRange(start: DateTime(2000), end: DateTime(2050));

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDateRange) {
      setState(() {
        _selectedDateRange = picked;
      });
    }
  }

  String selectedFilter = 'Today';
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();

  Future<void> _selectFromDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: fromDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != fromDate) {
      setState(() {
        fromDate = picked;
      });
    }
  }

  Future<void> _selectToDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: toDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != toDate) {
      setState(() {
        toDate = picked;
      });
    }
  }

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
            Align(
              alignment: Alignment.center,
              child: CustomText(
                  text: strWeeklyBankerReport,
                  color1: AppColors.white,
                  fontWeight: fontWeight700,
                  fontSize: font_25),
            ),
            CustomDivider(
              height: height_20,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(radius_10)
                ),
                child: DropdownButton<String>(
                  iconEnabledColor: AppColors.darkBlue,
                  iconDisabledColor: AppColors.darkBlue,
                  value: selectedFilter,
                  onChanged: (newValue) {
                    setState(() {
                      selectedFilter = newValue!;
                      if (newValue == 'Custom') {
                        _selectFromDate(context); // Show "From" date picker
                        _selectToDate(context); // Show "To" date picker
                      }
                    });
                  },
                  items: <String>['Today', '7 Days', 'Custom']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: CustomText(
                          text: value,
                          color1: AppColors.darkBlue,
                          fontWeight: fontWeight700,
                          fontSize: font_15),
                    );
                  }).toList(),
                ),
              ),
            ),
            if (selectedFilter == 'Custom')
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => _selectFromDate(context),
                    child: CustomText(
                        text:
                            '${formatDate(fromDate, [yyyy, '-', mm, '-', dd])}',
                        color1: AppColors.white,
                        fontWeight: fontWeight700,
                        fontSize: font_15),
                  ),
                  ElevatedButton(
                    onPressed: () => _selectToDate(context),
                    child: CustomText(
                        text: '${formatDate(toDate, [yyyy, '-', mm, '-', dd])}',
                        color1: AppColors.white,
                        fontWeight: fontWeight700,
                        fontSize: font_15),
                  ),
                ],
              ),
            CustomDivider(
              height: height_20,
            ),
            BankerReportLine(
              rBet: strRBet,
              mBet: strMBet,
              sales: strSales,
              wins: strWins,
              diffs: strDiffs,
              date: strDate,
              sNo: strSNo,
            ),
            for (int i = 0; i < 5; i++)
              BankerReportLine(
                sNo: '20',
                date: '20/12/2023',
                rBet: '20',
                mBet: '20',
                sales: '37',
                wins: '50',
                diffs: '22',
              ),
            CustomDivider(
              height: height_20,
            ),
            ReportSectionChip(
                totalSales: '1000.8',
                megaSales: '2000.0',
                netSales: '540.8',
                totalCommision: '200.2',
                wins: '400.5',
                paidToBanker: '105.25',
                receivedFromBanker: '500.5',
                agentCashAtHand: '1000.0'),
            Column(
              children: [
                CustomDivider(
                  height: height_20,
                ),
                CustomButton(
                  width: width_200,
                  text: 'OK',
                  color: AppColors.darkBlue,
                  fontWeight: fontWeight800,
                  font: font_20,
                  onPress: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Column(
// children: [
// CustomText(
// text: 'From',
// color1: AppColors.white,
// fontWeight: fontWeight600,
// fontSize: font_20),
// InkWell(
// onTap: () => _selectDateRange(context),
// child: CustomMultiUseContainer(
// ver: margin_15,
// hor: margin_20,
// simpleRow: Row(
// children: [
// CustomText(
// text: _selectedDateRange != null
// ? '${_selectedDateRange.start.day}/${_selectedDateRange.start.month}/${_selectedDateRange.start.year}'
//     : 'Select Date',
// color1: AppColors.darkBlue,
// fontWeight: fontWeight700,
// fontSize: font_15),
// ],
// ),
// ),
// )
// ],
// ),
// Column(
// children: [
// CustomText(
// text: 'To',
// color1: AppColors.white,
// fontWeight: fontWeight600,
// fontSize: font_20),
// InkWell(
// onTap: () => _selectedDateRange,
// child: CustomMultiUseContainer(
// ver: margin_15,
// hor: margin_20,
// simpleRow: Row(
// children: [
// CustomText(
// text: _selectedDateRange != null
// ? '${_selectedDateRange.end.day}/${_selectedDateRange.end.month}/${_selectedDateRange.end.year}'
//     : 'Select Date',
// color1: AppColors.darkBlue,
// fontWeight: fontWeight700,
// fontSize: font_15),
// ],
// )),
// )
// ],
// ),
// ],
// ),
