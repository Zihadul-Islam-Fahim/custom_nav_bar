import 'package:bottom_nav_test/controllers/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

GetBuilder<GetxController> navBarItems(
    {required int index, required IconData icon, required String label}) {
  return GetBuilder<NavBarController>(builder: (navBarController) {
    return InkWell(
      onTap: () {
        navBarController.change(index);
      },
      child: Container(
        margin: navBarController.selected == index
            ? const EdgeInsets.all(0)
            : const EdgeInsets.all(10),
        padding: navBarController.selected == index
            ? const EdgeInsets.all(12)
            : null,
        color: navBarController.selected == index ? Colors.black : Colors.white,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: navBarController.selected == index
                ? Colors.deepOrangeAccent
                : Colors.white,
          ),
          child: SizedBox(
            height: Get.height * 0.055,
            width: Get.width * 0.5,
            child: Column(
              children: [
                Icon(icon, size: 30),
                Text(
                  label,
                  style: TextStyle(
                      fontSize: 10,
                      color: navBarController.selected == index
                          ? Colors.white
                          : Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  });
}
