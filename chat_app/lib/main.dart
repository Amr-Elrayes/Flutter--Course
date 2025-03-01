import 'package:chat_app/Screens/login_page.dart';
import 'package:chat_app/Screens/signup_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id : (context) => LoginPage(),
        SignupPage.id : (context) => SignupPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: "LoginPage",
    );
  }
}
