import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          // Default border when the TextField is not focused
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200, // Default border color
              width: 1.5, // Border width
            ),
          ),
          // Border when the TextField is enabled and not focused
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200, // Border color when enabled
              width: 1.5,
            ),
          ),
          // Border when the TextField is focused
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200, // Border color when focused
              width: 2.0,
            ),
          ),
          // Border when the TextField is disabled
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300, // Border color when disabled
              width: 1.5,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontFamily: 'PublicSans',
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 12.0), // Adjust padding
        ),
      ),
    );
  }
}
