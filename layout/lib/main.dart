import 'package:flutter/material.dart';
import 'package:layout/screens/column_demo.dart';
import 'package:layout/screens/main_screen.dart';
import 'package:layout/screens/sub/column_align_demo.dart';
import 'package:layout/screens/sub/layout_example_demo.dart';
import 'package:layout/screens/sub/row_align_demo.dart';
import 'package:layout/screens/row_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MainScreen(),
        '/Row': (context) => const RowDemo(),
        '/Row/align': (context) => const RowAlignDemo(),
        '/Column': (context) => const ColumnDemo(),
        '/Column/align': (context) => const ColumnAlignDemo(),
        '/Layout/example': (context) => const LayoutExampleDemo(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Column(
          children: [
            Text('Row Example'),
          ],
        ),
      ),
    );
  }
}
