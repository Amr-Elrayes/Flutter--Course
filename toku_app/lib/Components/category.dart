import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.text , this.color , this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                padding: EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 80,
                color: color,
                child: Text(
                  text!, 
                  style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
              ),
    );
  }
}