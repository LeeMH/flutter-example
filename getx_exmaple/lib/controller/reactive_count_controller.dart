import 'package:get/get.dart';

class ReactiveCountController {
  var count = 0.obs;

  void increase() {
    count++;
  }
}
