import 'package:flutter/material.dart';

void main() {
  runApp( const BussinesCard());
}

class BussinesCard extends StatelessWidget {
  const BussinesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 102,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/Amr.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  alignment: const Alignment(0, -1), 
                ),
              ),
              
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Amr Elrayes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontFamily: "Pacifico",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Color.fromARGB(255, 154, 152, 152),
                  fontSize: 26,
                  fontFamily: "lora",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 154, 152, 152),
                indent: 50,
                endIndent: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 45, 16, 22),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                ),
                child: const Row(
                  children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.phone,
                          size: 34,
                          color: Color(0xFF2B475E),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text("(+20) 1064575030",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 22),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                ),
                child: const Row(
                  children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.mail,
                          size: 34,
                          color: Color(0xFF2B475E),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text("amrelrayes126@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 22),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 12),
                      child: ImageIcon(
                        AssetImage("assets/icons/linkedin.png"),
                        size: 35.0,
                        color: Color(0xFF2B475E),
                      ),
                    ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text("Amr Elrayes",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
