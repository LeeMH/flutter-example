import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  final String demoTarget = 'Row';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$demoTarget Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('$demoTarget with MainAxisAlignment.spaceEvenly'),
            const SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/pic1.jpg'),
                  Image.asset('images/pic2.jpg'),
                  Image.asset('images/pic3.jpg'),
                ],
              ),
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            Text('$demoTarget with MainAxisAlignment.spaceBetween'),
            const SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/pic1.jpg'),
                  Image.asset('images/pic2.jpg'),
                  Image.asset('images/pic3.jpg'),
                ],
              ),
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            Text('$demoTarget with MainAxisAlignment.spaceAround'),
            const SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('images/pic1.jpg'),
                  Image.asset('images/pic2.jpg'),
                  Image.asset('images/pic3.jpg'),
                ],
              ),
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            Text('$demoTarget with MainAxisAlignment.start'),
            const SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('images/pic1.jpg'),
                  Image.asset('images/pic2.jpg'),
                  Image.asset('images/pic3.jpg'),
                ],
              ),
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            Text('$demoTarget with MainAxisAlignment.end'),
            const SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('images/pic1.jpg'),
                  Image.asset('images/pic2.jpg'),
                  Image.asset('images/pic3.jpg'),
                ],
              ),
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            Text('$demoTarget with MainAxisAlignment.center'),
            const SizedBox(height: 10),
            Container(
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/pic1.jpg'),
                  Image.asset('images/pic2.jpg'),
                  Image.asset('images/pic3.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
