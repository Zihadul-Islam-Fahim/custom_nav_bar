import 'package:bottom_nav_test/widgets/bottom_nav_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: Get.width * 0.2,
          height: Get.height,
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.16,
                child: Image.network(
                    'https://www.pngall.com/wp-content/uploads/8/Restaurant-Logo-PNG-Photo.png'),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      navBarItems(index: 0, icon: CupertinoIcons.house_fill, label: "Home"),
                      navBarItems(index: 1, icon: CupertinoIcons.search, label: "Search"),
                      navBarItems(index: 2, icon: Icons.settings, label: "Setting"),
                      navBarItems(index: 3, icon: CupertinoIcons.phone_circle_fill, label: "Call"),
                      navBarItems(index: 4, icon: CupertinoIcons.cart, label: "Cart"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              SizedBox(
                  height: Get.height * 0.07,
                  child: const Column(
                    children: [
                      Icon(CupertinoIcons.person_alt_circle),
                      Text("Profile")
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
