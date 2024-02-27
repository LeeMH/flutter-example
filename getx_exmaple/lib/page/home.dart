import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exmaple/page/First.dart';
import 'package:getx_exmaple/page/reactive_state.dart';
import 'package:getx_exmaple/page/simple_state.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('일반적인 라우트'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const First(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('GetX 라우트'),
              onPressed: () {
                Get.to(() => const First());
              },
            ),
            ElevatedButton(
              child: const Text('Named 라우트'),
              onPressed: () {
                Get.toNamed("/first");
              },
            ),
            ElevatedButton(
              child: const Text('단순상태 관리'),
              onPressed: () {
                Get.to(() => const SimpleStatePage());
              },
            ),
            ElevatedButton(
              child: const Text('Reactive 상태 관리'),
              onPressed: () {
                Get.to(() => const ReactiveStatePage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
