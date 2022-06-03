import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vrudi/utility/utilty.dart';

Future<UserCredential?> createAccount(String name, String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try {
    UserCredential userCrendetial = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    if (userCrendetial != null) {
      print("Login Succefull");
      await _firestore
          .collection("users")
          .doc(_auth.currentUser!.uid)
          .set({"name": name, "email": email, "status": "Unavalible"});
      return userCrendetial;
    } else {
      print("Account Creation failed");
      return userCrendetial;
    }
  } on FirebaseAuthException catch (e) {
    print('Failed with error code: ${e.code}');
    print(e.message);
    Utility.showToast(
      msg: "${e.message}",
    );
  }
  return null;
}

Future<UserCredential?> login(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    if (userCredential != null) {
      print("Login Sucesfull");
      return userCredential;
    } else {
      print("Login Failed");
      return userCredential;
    }
  } on FirebaseAuthException catch (e) {
    print('Failed with error code: ${e.code}');
    print(e.message);
    Utility.showToast(
      msg: "${e.message}",
    );
  }
  return null;
}

Future<User?> logout() async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    await _auth.signOut();
  } catch (e) {
    print("error");
  }
}
