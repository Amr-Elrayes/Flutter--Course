import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.content, this.onTap});
  final String content;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          content,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
