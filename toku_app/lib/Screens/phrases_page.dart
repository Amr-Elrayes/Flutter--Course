import 'package:flutter/material.dart';
import 'package:toku_app/Components/phrases_item.dart';
import 'package:toku_app/Models/Item.dart';

class phrases_Page extends StatelessWidget {
  phrases_Page({super.key});
  final List<Item> phrases =  [
    Item(
        jpName: "お名前は何ですか？",
        enName: "what is your name ?",
        sound: "sounds/phrases/what_is_your_name.wav"),
    Item(
        jpName: "プログラミングが大好きです",
        enName: "I love programming",
        sound: "sounds/phrases/i_love_programming.wav"),
    Item(
        jpName: "来ますか ?",
        enName: "Are you coming ?",
        sound: "sounds/phrases/are_you_coming.wav"),
    Item(
        jpName: "はい、行きます",
        enName: "Yes, I\'m coming",
        sound: "sounds/phrases/yes_im_coming.wav"),
    Item(
        jpName: "どこに行くの",
        enName: "Where are you going ?",
        sound: "sounds/phrases/where_are_you_going.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47a5cb),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        iconTheme: const IconThemeData(
    color: Colors.white, 
  ),
        title: const Text(
          "Phrases",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, num) {
          return phrases_item(phrase: phrases[num]);
        },
      ),
    );
  }
}



