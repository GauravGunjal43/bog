import 'package:flutter/material.dart';
import 'package:test/Dashboard.dart';
import 'package:test/checkout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Dashboard());
  }
}
