import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  PreferredSizeWidget _appBar() {
    return AppBar(
      elevation: 1,
      title: GestureDetector(
        onTap: () {
          if (kDebugMode) {
            print('클릭');
          }
        },
        child: const Row(
          children: [
            Text('아라동'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.tune),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/bell.svg",
            width: 22,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
