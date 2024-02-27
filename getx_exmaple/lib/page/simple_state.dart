import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exmaple/controller/count_controller.dart';

class SimpleStatePage extends StatelessWidget {
  const SimpleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('단순상태 관리 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'GetX',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            GetBuilder<CountController>(
              builder: (controller) {
                return Text(
                  '${controller.count}',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountController>().increase();
              },
              child: const Text(
                '+',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
