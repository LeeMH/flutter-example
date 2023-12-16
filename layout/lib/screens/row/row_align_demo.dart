import 'package:flutter/material.dart';

class RowAlignDemo extends StatelessWidget {
  const RowAlignDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainAxisAlignment alignment =
        ModalRoute.of(context)?.settings.arguments as MainAxisAlignment;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Align'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(alignment.toString()),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: alignment,
              children: [
                Image.asset('images/pic1.jpg'),
                Image.asset('images/pic2.jpg'),
                Image.asset('images/pic3.jpg'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
