import 'package:flutter/material.dart';
import 'package:tune_app/Views/tune_view.dart';

void main() {
  runApp(const TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TuneView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
