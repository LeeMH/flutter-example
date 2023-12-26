import 'package:flutter/material.dart';

class ColumnAlignDemo extends StatelessWidget {
  const ColumnAlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final MainAxisAlignment alignment =
        ModalRoute.of(context)?.settings.arguments as MainAxisAlignment;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Align'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(alignment.toString()),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: alignment,
                  children: [
                    Image.asset('images/pic1.jpg'),
                    Image.asset('images/pic2.jpg'),
                    Image.asset('images/pic3.jpg'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
