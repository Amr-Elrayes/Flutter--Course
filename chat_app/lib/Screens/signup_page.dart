import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  static String id = 'SignupPage';
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
                  'Signup',
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
              hintText: 'Name',
            ),
            SizedBox(
              height: 17,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 17,
            ),
            CustomTextField(
              hintText: 'Phone',
            ),
            SizedBox(
              height: 17,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            SizedBox(
              height: 17,
            ),
            CustomButton(content: 'Signup'),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
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
