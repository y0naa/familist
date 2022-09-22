import 'package:firebase_auth/firebase_auth.dart';

Future signInService(String email, String password) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.trim(), password: password.trim());
  print("success");
}
