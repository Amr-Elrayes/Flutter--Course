import 'package:flutter/material.dart';
import 'package:toku_app/Components/colors_item.dart';
import 'package:toku_app/Models/Item.dart';

class colors_Page extends StatelessWidget {
  colors_Page({super.key});
  final List<Item> colors =  [
    Item(
        image: "assets/images/colors/color_red.png",
        jpName: "赤",
        enName: "red",
        sound: "sounds/colors/red.wav"),
    Item(
        image: "assets/images/colors/color_green.png",
        jpName: "緑",
        enName: "green",
        sound: "sounds/colors/green.wav"),
    Item(
        image: "assets/images/colors/color_yellow.png",
        jpName: "黄色",
        enName: "yellow",
        sound: "sounds/colors/yellow.wav"),
    Item(
        image: "assets/images/colors/color_brown.png",
        jpName: "茶色",
        enName: "brown",
        sound: "sounds/colors/brown.wav"),
    Item(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "ほこりっぽい黄色",
        enName: "dusty yellow",
        sound: "sounds/colors/dusty yellow.wav"),
    Item(
        image: "assets/images/colors/color_white.png",
        jpName: "白",
        enName: "white",
        sound: "sounds/colors/white.wav"),
    Item(
        image: "assets/images/colors/color_black.png",
        jpName: "黒",
        enName: "black",
        sound: "sounds/colors/black.wav"),
    Item(
        image: "assets/images/colors/color_gray.png",
        jpName: "グレー",
        enName: "gray",
        sound: "sounds/colors/gray.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        iconTheme: const IconThemeData(
    color: Colors.white, 
  ),
        title: const Text(
          "Colors",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, num) {
          return colors_item(color: colors[num]);
        },
      ),
    );
  }
}



