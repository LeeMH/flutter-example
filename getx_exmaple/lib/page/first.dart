import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_exmaple/page/second.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('첫번째 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('첫번째 페이지 입니다.'),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const Second());
                },
                child: const Text('다음 페이지로 이동')),
          ],
        ),
      ),
    );
  }
}
