import 'package:flutter/material.dart';
import 'package:flutter_car_installment_calculator/views/input_screen_ui.dart';
import 'package:flutter_car_installment_calculator/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FlutterCarInstallmentCalculator());
}

class FlutterCarInstallmentCalculator extends StatefulWidget {
  const FlutterCarInstallmentCalculator({super.key});

  @override
  State<FlutterCarInstallmentCalculator> createState() =>
      _FlutterCarInstallmentCalculatorState();
}

class _FlutterCarInstallmentCalculatorState
    extends State<FlutterCarInstallmentCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)),
    );
  }
}
