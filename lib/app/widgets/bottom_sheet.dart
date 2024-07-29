import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({
    super.key,
    required this.titleButton,
    this.heightSheet,
    required this.child,
  });

  final Widget titleButton;
  final double? heightSheet;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.bottomSheet(
          SizedBox(
            height: heightSheet,
            width: double.infinity,
            //color: Colors.greenAccent,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: child,
                ),
              ],
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          barrierColor: Colors.grey,
          backgroundColor: Colors.white,
          isDismissible: true,
        );
      },
      child: titleButton,
    );
  }
}
