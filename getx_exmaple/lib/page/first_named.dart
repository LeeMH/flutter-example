import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_exmaple/main.dart';
import 'package:getx_exmaple/page/second.dart';

class FirstNamed extends StatelessWidget {
  const FirstNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('첫번째 Named 페이지'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('첫번째 페이지 입니다.'),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const Second());
              },
              child: const Text('다음 페이지로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second');
              },
              child: const Text('다음 Named 페이지로 이동'),
            ),
            // arguments 속성을 이용해서 값을 전달할수 있다. map, string, 객체등 모든 자료형 지원
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/argument', arguments: {'name': '홍길동', 'age': 25});
              },
              child: const Text('argument 전달'),
            ),
            // 객체 전달
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/argument2',
                    arguments: User(name: '김통깨', age: 25));
              },
              child: const Text('객체 전달'),
            ),
            // 객체 전달
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/url_parameter/12345?name=김길동&age=25');
              },
              child: const Text('URL 파라메터 전달'),
            ),
          ],
        ),
      ),
    );
  }
}
