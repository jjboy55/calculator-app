import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'provider/calculator_model.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      child: ChangeNotifierProvider(
        create: (context) => CalculatorModel(),
        child: MaterialApp(
          theme: ThemeData(fontFamily: 'TT Interfaces'),
          debugShowCheckedModeBanner: false,
          home: const Scaffold(
            body: SafeArea(
              child: OnboardingScreen(),
            ),
          ),
        ),
      ),
    );
  }
}
