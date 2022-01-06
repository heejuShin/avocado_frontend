import 'package:flutter/material.dart';

class Repeat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(231, 241, 195, 1.0),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          size: 32,
          color: Color.fromRGBO(129, 154, 33, 1.0), //change your color here
        ),
        toolbarHeight: 70,
        backgroundColor: Color.fromRGBO(231, 241, 195, 1.0),
        title: Text("AI 말하기",
          style: TextStyle(
            fontSize: 32,
            color: Color.fromRGBO(129, 154, 33, 1.0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        
      ),
    );
  }
}