import 'package:cric_eureka/Pages/SignInPage/Screen/LoginScreen.dart';
import 'package:cric_eureka/Pages/SignInPage/Services/authentication.dart';
import 'package:cric_eureka/Pages/SignInPage/Widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../DropDown/DrawerBar.dart';

class Loggedinscreen extends StatelessWidget {
  const Loggedinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    'assets/NGO_Eureka_copy-removebg-preview.png',
                  ),
                ),
                Text(
                  "NGO Eureka",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    letterSpacing:1.5,
                  ),),
                InkWell(
                  onTap: (){
                    Get.to(DrawerBar());
                  },
                  child: Container(
                    width: 50,
                    height: 50,

                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(
                      Icons.menu,
                      color: Theme.of(context).colorScheme.secondary,
                    ),

                  ),
                ),
              ],),
            SizedBox(height: 40,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Congratulations, \n You have successfully Logged In",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                MyButton(
                    onTap: () async{
                      await AuthServices().signOut();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context)=>Loginscreen()),
                      );
                    },
                    text: "Log out")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
