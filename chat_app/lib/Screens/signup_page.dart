import 'package:chat_app/Screens/chat_page.dart';
import 'package:chat_app/Screens/login_page.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../helper/show_snackBar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

// ignore: must_be_immutable
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  static String id = 'SignupPage';

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? email;

  String? password;

  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Image.asset(
                  imgPath,
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
                CustomFormTextField(
                  hintText: 'Name',
                ),
                SizedBox(
                  height: 17,
                ),
                CustomFormTextField(
                  onChanged: (value) {
                    email = value;
                  },
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 17,
                ),
                CustomFormTextField(
                  onChanged: (value) {
                    password = value;
                  },
                  hintText: 'Password',
                  obscureText: true,
                  showEyeIcon: true,
                ),
                SizedBox(
                  height: 17,
                ),
                CustomButton(
                  content: 'Signup',
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await UserSignup();
                        Navigator.pushReplacementNamed(context , ChatPage.id);
                        ShowSnackBar(context, 'Signup Successfully ✅');
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          ShowSnackBar(context, 'Password is weak');
                        } else if (e.code == 'email-already-in-use') {
                          ShowSnackBar(context, 'E-mail is already exist');
                        }
                      } catch (ex) {
                        ShowSnackBar(context, 'there was an error , try later');
                      }
                      isLoading = false;
                      setState(() {});
                    }
                  },
                ),
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
                        Navigator.pushReplacementNamed(context , LoginPage.id);
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
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> UserSignup() async {
    // ignore: unused_local_variable
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
