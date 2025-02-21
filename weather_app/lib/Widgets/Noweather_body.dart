import 'package:flutter/material.dart';
import 'package:weather_app/Screens/search_page.dart';

class NoweatherBody extends StatelessWidget {
  const NoweatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 30,
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
                'Search a Place',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
