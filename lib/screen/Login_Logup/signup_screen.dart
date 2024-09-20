import 'package:flutter/material.dart';
import 'package:its_tech_app/screen/Login_Logup/auth_serivice.dart';
import 'package:its_tech_app/screen/Login_Logup/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignUpScreen> {
  final check = true;

  final _auth = AuthService();
  var show_Password = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    show_Password = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
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
                  height: 60,
                ),
                const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sign in and start managing machines and members',
                  style: TextStyle(fontSize: 13, color: Color(0xFFA8A8A8)),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailController,
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
                  height: 10,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: show_Password,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(color: Colors.black45, fontSize: 18),
                      fillColor: const Color(0xFFE8E8E8).withOpacity(0.6),
                      prefixIcon: const Icon(
                        Icons.lock_outline,
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
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              show_Password = !show_Password;
                            });
                          },
                          icon: show_Password
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: show_Password,
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                          fontSize: 18, color: Colors.black45.withOpacity(0.6)),
                      fillColor: const Color(0xFFE8E8E8).withOpacity(0.6),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Color(0xFFFD6434),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFFD6434),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              show_Password = !show_Password;
                            });
                          },
                          icon: show_Password
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off))),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(onTab: _signUp, text: "Sign Up"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Mật khẩu và xác nhận mật khẩu không trùng khớp!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    final user = await _auth.createUserWithEmailAndPassword(
        context, emailController.text, passwordController.text);

    return;
  }
}
