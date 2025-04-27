import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_prdacts.dart';

import '../widgets/Custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'New Trend',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
          child: FutureBuilder<List<ProductModel>>(
              future: GetAllPrdacts().getAllproducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> proudcts = snapshot.data!;
                  return GridView.builder(
                    itemCount: proudcts.length,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 80),
                      itemBuilder: (context, index) {
                        return Custom_Card(proudct: proudcts[index],);
                      });
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })),
    );
  }
}
