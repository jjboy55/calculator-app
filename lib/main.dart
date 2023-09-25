import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'TT Interfaces'),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
          child: OnboardingScreen(),
        ),
      ),
    );
  }
}
