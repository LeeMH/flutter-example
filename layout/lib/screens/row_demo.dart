import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Row with MainAxisAlignment.spaceEvenly'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/pic1.jpg'),
                Image.asset('images/pic2.jpg'),
                Image.asset('images/pic3.jpg'),
              ],
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            const Text('Row with MainAxisAlignment.spaceBetween'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/pic1.jpg'),
                Image.asset('images/pic2.jpg'),
                Image.asset('images/pic3.jpg'),
              ],
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            const Text('Row with MainAxisAlignment.spaceAround'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('images/pic1.jpg'),
                Image.asset('images/pic2.jpg'),
                Image.asset('images/pic3.jpg'),
              ],
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            const Text('Row with MainAxisAlignment.start'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/pic1.jpg'),
                Image.asset('images/pic2.jpg'),
                Image.asset('images/pic3.jpg'),
              ],
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            const Text('Row with MainAxisAlignment.end'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('images/pic1.jpg'),
                Image.asset('images/pic2.jpg'),
                Image.asset('images/pic3.jpg'),
              ],
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            const Text('Row with MainAxisAlignment.center'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/pic1.jpg'),
                Image.asset('images/pic2.jpg'),
                Image.asset('images/pic3.jpg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
