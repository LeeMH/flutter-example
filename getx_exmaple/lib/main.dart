import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_exmaple/controller/count_controller.dart';
import 'package:getx_exmaple/controller/reactive_count_controller.dart';
import 'package:getx_exmaple/page/argument.dart';
import 'package:getx_exmaple/page/argument2.dart';
import 'package:getx_exmaple/page/bind_management.dart';
import 'package:getx_exmaple/page/first_named.dart';
import 'package:getx_exmaple/page/home.dart';
import 'package:getx_exmaple/page/second_named.dart';
import 'package:getx_exmaple/page/url_parameter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(CountController());
    Get.put(ReactiveCountController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const Home()),
        // transition 속성으로 페이지 이동시 애니메이션 효과를 줄수 있다.
        GetPage(
          name: "/first",
          page: () => const FirstNamed(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: "/second",
          page: () => const SecondNamed(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: "/first",
          page: () => const SecondNamed(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: "/argument",
          page: () => const Argument(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: "/argument2",
          page: () => const Argument2(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: "/url_parameter/:uid",
          page: () => const UrlParameter(),
          transition: Transition.leftToRight,
        ),
        GetPage(
          name: "/binding",
          page: () => const BindManagementPage(),
          transition: Transition.leftToRight,
          binding: BindingsBuilder(() {
            Get.put(CountController());
          }),
        ),
      ],
    );
  }
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
