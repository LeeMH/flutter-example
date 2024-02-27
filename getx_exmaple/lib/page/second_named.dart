import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_exmaple/page/Home.dart';

class SecondNamed extends StatelessWidget {
  const SecondNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('두번째 Named 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => const Home());
              },
              child: const Text('홈으로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/");
              },
              child: const Text('홈 Named 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
