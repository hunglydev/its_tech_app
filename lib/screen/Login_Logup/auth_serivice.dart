import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:its_tech_app/screen/Login_Logup/login_screen.dart';
import 'package:nb_utils/nb_utils.dart';

class AuthService {
  Future<void> createUserWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      toast("Dang ki thanh cong");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toast("mật khuẩn yếu");
      } else if (e.code == 'email-already-in-use') {
        toast("Đã tồn tại tài khoản");
      }
    } catch (e) {
      toast(e.toString());
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      toast("đăng nhập thành công");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        toast("không tìm thấy tài khoản");
      } else if (e.code == 'wrong-password') {
        toast("Sai mật khuẩu");
      }
    }
    return null;
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      toast('vào mail để đôi mk');
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        toast("không tìm thấy tài khoản");
      }
    } catch (e) {
      toast(e.toString());
    }
  }
}
