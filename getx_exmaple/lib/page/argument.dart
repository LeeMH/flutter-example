import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Argument extends StatelessWidget {
  const Argument({super.key});

  @override
  Widget build(BuildContext context) {
    String name = Get.arguments['name'];
    String age = Get.arguments['age'].toString();

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
