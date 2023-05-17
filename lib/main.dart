// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:softkodes/components/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD78484),
        body: LayoutScreen(),
      ),
    );
  }
}
