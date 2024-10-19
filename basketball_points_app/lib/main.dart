import 'package:flutter/material.dart';

void main() {
  runApp(Basketball_App());
}

class Basketball_App extends StatefulWidget {
  @override
  State<Basketball_App> createState() => _Basketball_AppState();
}

class _Basketball_AppState extends State<Basketball_App> {
  int TeamApoints = 0;

  int TeamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(
            child: Text(
              "Basketball Counter",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "$TeamApoints",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamApoints += 1;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(height: 18),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamApoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(height: 18),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamApoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 35,
                    endIndent: 35,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "$TeamBpoints",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 170,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBpoints += 1;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(height: 18),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBpoints += 2;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(height: 18),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(130, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBpoints += 3;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(130, 50),
                ),
                onPressed: () {
                  setState(() {
                    TeamApoints = 0;
                    TeamBpoints = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
