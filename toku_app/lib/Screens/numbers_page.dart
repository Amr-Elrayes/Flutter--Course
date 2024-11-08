import 'package:flutter/material.dart';
import 'package:toku_app/Components/number_item.dart';
import 'package:toku_app/Models/Item.dart';

// ignore: must_be_immutable
class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  List<Item> numbers =  [
    Item(
        image: "assets/images/numbers/number_one.png",
        jpName: "1つ",
        enName: "one",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_two.png",
        jpName: "二",
        enName: "two",
        sound: "sounds/numbers/number_two_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_three.png",
        jpName: "三つ",
        enName: "three",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_four.png",
        jpName: "4つ",
        enName: "four",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_five.png",
        jpName: "五",
        enName: "five",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_six.png",
        jpName: "六",
        enName: "six",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_seven.png",
        jpName: "セブン",
        enName: "seven",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_eight.png",
        jpName: "八",
        enName: "eight",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_nine.png",
        jpName: "九",
        enName: "nine",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Item(
        image: "assets/images/numbers/number_ten.png",
        jpName: "10 十",
        enName: "ten",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        iconTheme: const IconThemeData(
    color: Colors.white,),
        title: const Text(
          "Numbers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          return NumberItem(number: numbers[num]);
        },
      ),
    );
  }
}



