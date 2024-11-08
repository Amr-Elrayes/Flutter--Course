import 'package:flutter/material.dart';
import 'package:toku_app/Models/Item.dart';

class phrases_item extends StatelessWidget {
  final Item phrase;
  const phrases_item({super.key , required this.phrase});
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,
            color: const Color(0xff47a5cb),
            child: Row(
              children: [
                Padding(
                  
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        
                        phrase.jpName,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        phrase.enName,
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
                      phrase.playSound();
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