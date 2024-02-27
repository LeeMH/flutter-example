import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CountController extends GetxController {
  int count = 0;

  void increase() {
    count++;
    update();
  }
}
