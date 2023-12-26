import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Row');
              },
              child: const Text('Row Demo'),
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Column');
              },
              child: const Text('Column Demo'),
            ),

            //--------------------------------------------
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Layout/example');
              },
              child: const Text('Layout Example Demo'),
            ),
            //--------------------------------------------
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ListView/example1');
              },
              child: const Text('ListView Example1 Demo'),
            ),
            //--------------------------------------------
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ListView/example2');
              },
              child: const Text('ListView Example2 Demo'),
            ),
            //--------------------------------------------
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/GridView/example');
              },
              child: const Text('GridView Example Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
