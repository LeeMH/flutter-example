import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class UrlParameter extends StatelessWidget {
  const UrlParameter({super.key});

  @override
  Widget build(BuildContext context) {
    String param = Get.parameters['uid']!;
    String name = Get.parameters['name']!;
    String age = Get.parameters['age']!;

    return Scaffold(
      appBar: AppBar(
        title: Text('파라메터 = $param, $name, $age 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('parameter 테스트 페이지 입니다.'),
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
