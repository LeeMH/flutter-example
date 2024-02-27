import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exmaple/controller/reactive_count_controller.dart';

class ReactiveStatePage extends StatelessWidget {
  const ReactiveStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveCountController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive 상태 관리 페이지'),
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
            Obx(
              () => Text(
                '${Get.find<ReactiveCountController>().count.value}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<ReactiveCountController>().increase();
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
