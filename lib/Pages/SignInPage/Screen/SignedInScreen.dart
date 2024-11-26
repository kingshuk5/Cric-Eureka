import 'package:cric_eureka/Pages/SignInPage/Screen/LoggedInScreen.dart';
import 'package:cric_eureka/Pages/SignInPage/Screen/LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Signedinscreen extends StatelessWidget {
  const Signedinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return Loggedinscreen();
          }else{
            return Loginscreen();
          }
        });
  }
}
