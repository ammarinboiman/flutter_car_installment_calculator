import 'package:flutter/material.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 129, 33),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image1.png',
              width: 500,
              height: 270,
            ),
            const Text(
              'Car Installment',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 110, 251, 119),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Calculator',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 110, 251, 119),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(
              strokeWidth: 5,
              color: Colors.white,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Created by NiniNJan DTI-SAU',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 101, 255, 112),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 101, 255, 112),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
