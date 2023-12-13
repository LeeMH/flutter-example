import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  final String demoTarget = 'Column';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$demoTarget Demo'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/pic1.jpg'),
            Image.asset('images/pic2.jpg'),
            Image.asset('images/pic3.jpg'),
          ],
        ),
      ),
    );
  }
}
