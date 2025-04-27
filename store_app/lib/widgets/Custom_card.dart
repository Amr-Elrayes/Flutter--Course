import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';

// ignore: must_be_immutable
class Custom_Card extends StatelessWidget {
  Custom_Card({
    required this.proudct,
    super.key,
  });
  ProductModel proudct;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id , arguments: proudct);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey,
                    spreadRadius: -20,
                    offset: Offset(10, 10)),
              ],
            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      proudct.title.substring(0, 12),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r"$ " '${proudct.price.toString()}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 80,
              top: -40,
              child: Image.network(
                proudct.image,
                width: 100,
                height: 100,
              ))
        ],
      ),
    );
  }
}
