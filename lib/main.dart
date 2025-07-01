import 'package:flutter/material.dart';
import 'package:smart_scanner/view/OnboardingView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Scanner',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnboardingView(),
    );
  }
}
