import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:its_tech_app/screen/Login_Logup/button.dart';
import 'package:its_tech_app/screen/Login_Logup/login_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordState();
  }
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController email = TextEditingController();
  final auth = FirebaseAuth.instance;
  _reset() async {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: email.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'IT',
                      style: TextStyle(
                          fontSize: 35,
                          color: Color(0xFFFD6434),
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Text('icon'),
                    ),
                  ],
                ),
                const Text(
                  'SUPPORTER',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFD6434),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  'No worries, we’ll send you reset instructions.',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xFF200808).withOpacity(0.3)),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          const TextStyle(color: Colors.black45, fontSize: 18),
                      fillColor: const Color(0xFFE8E8E8).withOpacity(0.6),
                      prefixIcon: const Icon(
                        Icons.person_2_outlined,
                        color: Color(0xFFFD6434),
                      ),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFFD6434),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(onTab: _reset, text: 'Reset Passwprd'),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: const Color(0xFF200808).withOpacity(0.3),
                      ),
                      Text(
                        'Back to log in',
                        style: TextStyle(
                          color: const Color(0xFF200808).withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
