import 'package:flutter/material.dart';
import 'package:toku_app/Models/Item.dart';

class family_member_Item extends StatelessWidget {
  final Item family_member;
  const family_member_Item({super.key , required this.family_member});
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            color: const Color(0xff528032),
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFEF6DB),
                  child: Image.asset(family_member.image!)),
                Padding(
                  
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        
                        family_member.jpName,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        family_member.enName,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      
                    ],
                  ),
                ),
                const Spacer(flex: 1,),
          
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: IconButton(
                    onPressed: (){
                      family_member.playSound();
                    }, 
                  icon:Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 28,
                  ),),
                )
              ],
              
            ),
          );
  }
}