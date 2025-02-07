import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/Pages/new_page.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.card});
  final NewsModel card;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return NewPage(
            article: card,
          );
        }));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
      ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: card.imglink != null
        ? Image.network(
            card.imglink!,
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
            card.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
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
            card.subtitle?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
