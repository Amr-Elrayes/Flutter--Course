import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                content,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
            );
  }
}