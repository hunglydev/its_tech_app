import 'package:flutter/material.dart';
import 'package:its_tech_app/components/build_top_language.dart';
import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/screen/auth_screen/signup_screen.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main_screen/screen/main_screen.dart';
import 'auth_serivice.dart';
import 'button.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

bool? isCheck = false;

class _SignInScreenState extends State<LoginScreen> {
  final _auth = AuthService();
  bool showPassword = true;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    showPassword = true;
    _loadCredentials();
  }

  void _loadCredentials() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      email.text = prefs.getString('email') ?? "";
      password.text = prefs.getString('password') ?? "";
      isCheck = prefs.getBool('isCheck') ?? false;
    });
  }

  void _saveCredentials() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (isCheck == true) {
      await prefs.setString('email', email.text);
      await prefs.setString('password', password.text);
      await prefs.setBool('isCheck', true);
    }
  }

  void _navigateToMainScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
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
                const Row(
                  children: [
                    Text(
                      'IT',
                      style: TextStyle(
                          fontSize: 35,
                          color: Color(0xFFFD6434),
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    BuildTopLanguage()
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
                Text(
                  language.signIn,
                  style: const TextStyle(fontSize: 40),
                ),
                const Text(
                  'Sign in and start managing machines and members',
                  style: TextStyle(fontSize: 13, color: Color(0xFFA8A8A8)),
                ),
                const SizedBox(
                  height: 20,
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
                  height: 10,
                ),
                TextField(
                  controller: password,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                    hintText: 'Mật khẩu',
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
                            showPassword = !showPassword;
                          });
                        },
                        icon: showPassword
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: isCheck,
                            activeColor: const Color(0xFFFD6434),
                            onChanged: (newBoll) {
                              setState(() {
                                isCheck = newBoll;
                              });
                            }),
                        const Text(
                          'Save Password',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword()));
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(onTab: _logIn, text: "Login"),
                const SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontWeight: FontWeight.bold),
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

  _logIn() {
    _auth.signInWithEmailAndPassword(
      email.text,
      password.text,
    );
    _saveCredentials();
    _navigateToMainScreen();
  }
}
