import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';

class NewPage extends StatelessWidget {
const NewPage({super.key, required this.article});
final NewsModel article;
@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
        ),
        body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        const SizedBox(
            height: 20,
        ),
    ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: article.imglink != null
        ? Image.network(
            article.imglink!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Image.network(
            "https://tse3.mm.bing.net/th?id=OIP.Bvdv_Bv-cX6PRoj36NL9bQHaEK&pid=Api&P=0&h=220",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            ),
        )
        : Image.network(
            "https://tse3.mm.bing.net/th?id=OIP.Bvdv_Bv-cX6PRoj36NL9bQHaEK&pid=Api&P=0&h=220",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
        ),
    ),
        const SizedBox(
            height: 20,
        ),
        Text(
            article.title,
            style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            ),
        ),
        const SizedBox(
            height: 8,
        ),
        Text(
            article.subtitle?? '',
            style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            ),
        ),
        ],
    ),
        )
    );
}
}