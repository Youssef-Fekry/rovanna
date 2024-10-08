import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType textinputtype;
  final TextEditingController? inputControl;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.textinputtype,
    this.inputControl,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputControl,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
