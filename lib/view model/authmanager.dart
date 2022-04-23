import 'package:firebase_auth/firebase_auth.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:schoolapp/view%20model/database_manager.dart';

class AuthServices {
  FirebaseAuth auth = FirebaseAuth.instance;

  DataBaseManager databaseManager = DataBaseManager();

  Future signUpWithEmail(
    String email,
    String password,
    String name,
  ) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = userCredential.user;
      await databaseManager.createParent(user!.uid, name, email, false);
      return user;
    } on FirebaseException catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  Future signIn(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      return userCredential.user;
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: 'User not found');
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: 'Wrong password');
      }
    }
  }
}
