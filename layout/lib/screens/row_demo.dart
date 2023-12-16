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
      body: Column(
        children: [
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(
                context,
                '/row/align',
                arguments: MainAxisAlignment.start,
              )
            },
            child: const Text('Row with MainAxisAlignment.start'),
          ),
          ///////////////////////////////
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(
                context,
                '/row/align',
                arguments: MainAxisAlignment.center,
              )
            },
            child: const Text('Row with MainAxisAlignment.center'),
          ),
          ///////////////////////////////
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(
                context,
                '/row/align',
                arguments: MainAxisAlignment.end,
              )
            },
            child: const Text('Row with MainAxisAlignment.end'),
          ),
          ///////////////////////////////
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(
                context,
                '/row/align',
                arguments: MainAxisAlignment.spaceAround,
              )
            },
            child: const Text('Row with MainAxisAlignment.spaceAround'),
          ),
          ///////////////////////////////
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(
                context,
                '/row/align',
                arguments: MainAxisAlignment.spaceBetween,
              )
            },
            child: const Text('Row with MainAxisAlignment.spaceBetween'),
          ),
          ///////////////////////////////
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(
                context,
                '/row/align',
                arguments: MainAxisAlignment.spaceEvenly,
              )
            },
            child: const Text('Row with MainAxisAlignment.spaceEvenly'),
          ),
        ],
      ),
    );
  }
}
