import 'package:chat_app/Screens/signup_page.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/scholar.png',
              height: 120,
            ),
            Center(
              child: Text(
                'Schoolar Chat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            CustomTextField(
              hintText: 'ُEmail',
            ),
            SizedBox(
              height: 17,
            ),
            CustomTextField(
              hintText: 'ُPasswrd',
            ),
            SizedBox(
              height: 17,
            ),
            CustomButton(content: 'Login'),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignupPage.id);
                  },
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Color(0xffC7EDE6),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
