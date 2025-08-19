import 'package:flutter/material.dart';

class MyTextFild extends StatelessWidget {

  final TextEditingController controller;
  final String hint;
  final bool isPassword;

  const MyTextFild({super.key, required this.controller, required this.hint, this.isPassword =false, required String labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
        ),
      ),
    );
    
  }
}