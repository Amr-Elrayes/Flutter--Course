import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Screens/search_page.dart';

class FaileurPage extends StatelessWidget {
  const FaileurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.network(
                'https://tse4.mm.bing.net/th?id=OIP.tHkf8EDcI7yGqAOTn7bh8AHaEK&pid=Api&P=0&h=220'),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'There was an Error ',
                  style: TextStyle(fontSize: 22),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(130, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SearchPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Try Again',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
