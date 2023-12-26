import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const String demoTarget = 'Row';

    return Scaffold(
      appBar: AppBar(
        title: const Text('$demoTarget Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  '/$demoTarget/align',
                  arguments: MainAxisAlignment.start,
                )
              },
              child: const Text('$demoTarget with MainAxisAlignment.start'),
            ),
            ///////////////////////////////
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  '/$demoTarget/align',
                  arguments: MainAxisAlignment.center,
                )
              },
              child: const Text('$demoTarget with MainAxisAlignment.center'),
            ),
            ///////////////////////////////
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  '/$demoTarget/align',
                  arguments: MainAxisAlignment.end,
                )
              },
              child: const Text('$demoTarget with MainAxisAlignment.end'),
            ),
            ///////////////////////////////
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  '/$demoTarget/align',
                  arguments: MainAxisAlignment.spaceAround,
                )
              },
              child:
                  const Text('$demoTarget with MainAxisAlignment.spaceAround'),
            ),
            ///////////////////////////////
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  '/$demoTarget/align',
                  arguments: MainAxisAlignment.spaceBetween,
                )
              },
              child:
                  const Text('$demoTarget with MainAxisAlignment.spaceBetween'),
            ),
            ///////////////////////////////
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  '/$demoTarget/align',
                  arguments: MainAxisAlignment.spaceEvenly,
                )
              },
              child:
                  const Text('$demoTarget with MainAxisAlignment.spaceEvenly'),
            ),
          ],
        ),
      ),
    );
  }
}
