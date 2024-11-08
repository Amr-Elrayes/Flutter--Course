import 'package:flutter/material.dart';
import 'package:toku_app/Models/Item.dart';

class colors_item extends StatelessWidget {
  final Item color;
  const colors_item({super.key , required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            color: const Color(0xff79359F),
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFEF6DB),
                  child: Image.asset(color.image!)),
                Padding(
                  
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        
                        color.jpName,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        color.enName,
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
                      color.playSound();
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