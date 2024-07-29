import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:get/get.dart';
import 'package:school_attendance_management_system/app/constants/constants.dart';
import 'package:school_attendance_management_system/app/constants/text_style.dart';
import 'package:school_attendance_management_system/app/widgets/card_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: btnColor,
        title: const Text(
          "Dashboard",
          style: CustomTextStyle.appBarStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Boxicons.bx_bell,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Boxicons.bxs_user_circle,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: _buildUI(context),
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    final size = Get.size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: size.width * 0.05,
                mainAxisSpacing: size.width * 0.05,
                children: [
                  MyCard(
                    // width: Get.size.width * 0.3,
                    // height: Get.size.width * 0.3,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Boxicons.bx_grid_alt,
                          size: Get.width * 0.15,
                          color: btnColor,
                        ),
                        const Text(
                          "Attendance",
                          style: CustomTextStyle.titleStyleData,
                        )
                      ],
                    ),
                  ),
                  MyCard(
                    // width: Get.size.width * 0.4,
                    // height: Get.size.width * 0.4,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Boxicons.bx_user,
                          size: Get.width * 0.15,
                          color: btnColor,
                        ),
                        const Text(
                          "Leave",
                          style: CustomTextStyle.titleStyleData,
                        )
                      ],
                    ),
                  ),
                  MyCard(
                    // width: Get.size.width * 0.4,
                    // height: Get.size.width * 0.4,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Boxicons.bx_calendar,
                          size: Get.width * 0.15,
                          color: btnColor,
                        ),
                        const Text(
                          "Timetable",
                          style: CustomTextStyle.titleStyleData,
                        )
                      ],
                    ),
                  ),
                  MyCard(
                    // width: Get.size.width * 0.4,
                    // height: Get.size.width * 0.4,
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Boxicons.bx_calendar_event,
                          size: Get.width * 0.15,
                          color: btnColor,
                        ),
                        const Text(
                          "Student",
                          style: CustomTextStyle.titleStyleData,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(height: size.height*0.001,),
            const Text(
              "Today's Schedule",
              style: CustomTextStyle.titleStyle,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const MyCard(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Time", style: CustomTextStyle.titleStyleData,),
                      Text("Class", style: CustomTextStyle.titleStyleData,),
                      Text("Room", style: CustomTextStyle.titleStyleData,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Time", style: CustomTextStyle.textStyleGrey,),
                      Text("Class", style: CustomTextStyle.textStyleGrey,),
                      Text("Room", style: CustomTextStyle.textStyleGrey,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Time", style: CustomTextStyle.textStyleGrey,),
                      Text("Class", style: CustomTextStyle.textStyleGrey,),
                      Text("Room", style: CustomTextStyle.textStyleGrey,),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
