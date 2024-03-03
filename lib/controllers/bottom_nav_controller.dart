import 'package:get/get.dart';

class NavBarController extends GetxController{
  int selected = 0;

  void change(int index) {

      selected = index;
      update();

  }
}