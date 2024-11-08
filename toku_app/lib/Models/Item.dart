
import 'package:audioplayers/audioplayers.dart';

class Item 
{
  String? image;
  final String jpName;
  final String enName;
  final String sound;
  
  Item({
    required this.sound,
    this.image,
    required this.jpName,
    required this.enName,
  });
    
    playSound()
    {
      final player = AudioPlayer();
      player.play(AssetSource(sound));
    }
  }