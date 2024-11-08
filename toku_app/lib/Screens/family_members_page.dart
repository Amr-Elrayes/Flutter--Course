import 'package:flutter/material.dart';
import 'package:toku_app/Components/family_member_item.dart';
import 'package:toku_app/Models/Item.dart';

class family_members_Page extends StatelessWidget {
  family_members_Page({super.key});
  final List<Item> family_members =  [
    Item(
        image: "assets/images/family_members/family_father.png",
        jpName: "父親",
        enName: "father",
        sound: "sounds/family_members/father.wav"),
    Item(
        image: "assets/images/family_members/family_mother.png",
        jpName: "母親",
        enName: "mother",
        sound: "sounds/family_members/mother.wav"),
    Item(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "兄",
        enName: "older brother",
        sound: "sounds/family_members/older brother.wav"),
    Item(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "姉",
        enName: "older sister",
        sound: "sounds/family_members/older sister.wav"),
    Item(
        image: "assets/images/family_members/family_son.png",
        jpName: "息子",
        enName: "son",
        sound: "sounds/family_members/son.wav"),
    Item(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "弟",
        enName: "younger brother",
        sound: "sounds/family_members/younger brother.wav"),
    Item(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "妹",
        enName: "younger sister",
        sound: "sounds/family_members/younger sister.wav"),
    Item(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "娘",
        enName: "daughter",
        sound: "sounds/family_members/daughter.wav"),
    Item(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "祖父",
        enName: "grand father",
        sound: "sounds/family_members/grand father.wav"),
    Item(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "祖母",
        enName: "grand mother",
        sound: "sounds/family_members/grand mother.wav"),
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
          "Family Members",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: family_members.length,
        itemBuilder: (context, num) {
          return family_member_Item(family_member: family_members[num]);
        },
      ),
    );
  }
}



