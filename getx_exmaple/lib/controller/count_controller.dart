import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CountController extends GetxController {
  static CountController get to => Get.find();
  int count = 0;

  void increase() {
    count++;
    update();
  }
}
