import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'package:school_attendance_management_system/app/constants/constants.dart';
import 'package:school_attendance_management_system/app/constants/text_style.dart';
import 'package:school_attendance_management_system/app/widgets/bottom_sheet.dart';
import 'package:school_attendance_management_system/app/widgets/button_widget.dart';
import 'package:school_attendance_management_system/app/widgets/card_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyBottomSheet(
                titleButton: Icon(
                  Boxicons.bx_calendar,
                  size: 60,
                  color: btnColor,
                ),
                child: Column(
                  children: [
                    Text(
                      "122",
                      style: CustomTextStyle.appBarStyle,
                    ),
                    Text(
                      "Today's Schedule",
                      style: CustomTextStyle.titleStyle,
                    ),
                    Text(
                      "Today's Schedule",
                      style: CustomTextStyle.titleStyleData,
                    ),
                    Text(
                      "Enter your name please",
                      style: CustomTextStyle.textStyleGrey,
                    ),
                  ],
                ),
              ),
              MyButton(
                onPressed: () {},
                text: "Hello world",
                color: Colors.red,
                widthButton: 500 / 2,
                heightButton: 50,
                icon: const Icon(
                  Boxicons.bx_log_out_circle,
                  color: Colors.white,
                ),
              ),
              MyCard(
                width: 154,
                height: 154,
                color: Colors.white,
                onTap: () {
                  print("Hello world");
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Boxicons.bx_calendar,
                      size: 60,
                      color: btnColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hello",
                      style: CustomTextStyle.appBarStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
