import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthServices {
  // for storing data in fire store
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //for authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

//for signUp
  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
    required String number,}) async {
    String res = "Some Error Occurred";

    try {

      if (email.isNotEmpty ||
          password.isNotEmpty ||
          name.isNotEmpty ||
          number.isNotEmpty) {
        //for register user in auth
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email,
            password: password
        );
        //for  adding user to our cloud firestore
        // print(credential.user!.uid);
        await _firestore.collection("users").doc(credential.user!.uid).set({
          'name': name,
          'email': email,
          'number': number,
          'uid': credential.user!.uid,
        });
        res = "success";
      }
    } catch (e) {
      return(e.toString());
    }
    return res;
  }


  //for Login users

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // logging in user with email and password
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  // for sighout
  Future<void>signOut() async {
     await _auth.signOut();
  }
}