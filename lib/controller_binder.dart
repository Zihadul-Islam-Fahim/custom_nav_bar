import 'package:bottom_nav_test/controllers/bottom_nav_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(NavBarController());
  }
}
