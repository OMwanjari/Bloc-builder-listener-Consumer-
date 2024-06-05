import 'package:flutter/material.dart';
import 'package:bloc_basics_2/features/counter/ui/counter_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}
