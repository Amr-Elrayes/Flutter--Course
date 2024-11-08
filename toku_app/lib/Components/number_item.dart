import 'package:flutter/material.dart';
import 'package:toku_app/Models/Item.dart';

class NumberItem extends StatelessWidget {
  final Item number;
  const NumberItem({super.key , required this.number});
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            color: const Color(0xffEF9235),
            child: Row(
              children: [
                Container(
                  color: const Color(0xffFEF6DB),
                  child: Image.asset(number.image!)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        number.jpName,
                        style: const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        number.enName,
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
                      number.playSound();
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