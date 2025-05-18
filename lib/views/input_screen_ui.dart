import 'package:flutter/material.dart';

class InputScreenUi extends StatefulWidget {
  const InputScreenUi({super.key});

  @override
  State<InputScreenUi> createState() => _InputScreenUiState();
}

class _InputScreenUiState extends State<InputScreenUi> {
  @override
  void initState() {
    // code > delay 3 seconds....
    Future.delayed(
      //ระยะเวลา
      Duration(
        seconds: 3,
      ),
      //ครบเวลาเเล้วทำอะไรต่อ
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => InputScreenUi(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CI calculator',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 48, 171, 52),
      ),
    );
  }
}
