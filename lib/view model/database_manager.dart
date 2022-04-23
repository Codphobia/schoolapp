import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DataBaseManager {
  static DatabaseReference ref = FirebaseDatabase.instance.ref().child('users');
  Future<void> createParent(
      String uid, String name, String email, bool isAdmin) async {
    try {
      int dt = DateTime.now().millisecondsSinceEpoch;
      ref.child(uid).set({
        'uid': uid,
        'name': name,
        'email': email,
        'isAdmin': isAdmin,
        'dt': dt,
      });
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
