import 'package:flutter/material.dart';
import 'package:toku_app/Screens/home_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

