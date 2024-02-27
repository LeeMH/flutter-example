import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_exmaple/main.dart';

class Argument2 extends StatelessWidget {
  const Argument2({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('===========================');
      print(Get.arguments as User);
      print('===========================');
    }
    String name = (Get.arguments as User).name;
    String age = (Get.arguments as User).age.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('$name = $age 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('arguement 테스트 페이지 입니다.'),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('뒤로'),
            ),
          ],
        ),
      ),
    );
  }
}
