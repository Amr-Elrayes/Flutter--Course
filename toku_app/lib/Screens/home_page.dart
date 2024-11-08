import 'package:flutter/material.dart';
import 'package:toku_app/Components/category.dart';
import 'package:toku_app/Screens/colors_page.dart';
import 'package:toku_app/Screens/family_members_page.dart';
import 'package:toku_app/Screens/numbers_page.dart';
import 'package:toku_app/Screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: Color(0xff46322B),
          title: Text("Toku" , style: TextStyle(
            color: Colors.white,
          ),),
        ),
        body: Column(
          children: [
            Category(
              onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NumbersPage();
                }));
              },
              text: "Numbers",
              color: Color(0xffEF9235),
            ),
            Category(
                  onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return family_members_Page();
                }));
              },
              text: "Family Members",
              color: Color(0xff528032),
            ),
            Category(
                  onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return colors_Page();
                }));
              },
              text: "Colors",
              color: Color(0xff79359F),
            ),
          Category(
                  onTap:() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return phrases_Page();
                }));
              },
            text: "Phrases",
            color: Color(0xff47a5cb),
          ),
          ],
        ),
      );
  }
}


