import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,this.inputType, this.hintText, this.onChanged, this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
