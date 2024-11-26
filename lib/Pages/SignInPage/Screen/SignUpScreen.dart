import 'package:cric_eureka/Pages/SignInPage/Screen/LoggedInScreen.dart';
import 'package:cric_eureka/Pages/SignInPage/Screen/LoginScreen.dart';
import 'package:cric_eureka/Pages/SignInPage/Services/authentication.dart';
import 'package:cric_eureka/Pages/SignInPage/Widgets/showSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/button.dart';
import '../Widgets/text_field.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final TextEditingController nameController=TextEditingController();
  final TextEditingController numberController=TextEditingController();
  bool isLoading=false;

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    numberController.dispose();
    nameController.dispose();
  }

  void signUpUser()async{
    String res = await AuthServices().signUpUser(
        email:emailController.text,
        password: passwordController.text,
        name: nameController.text,
        number: numberController.text,
    );

    if(res == "success"){
      setState(() {
        isLoading=true;
      });
      //navigate to  next screen
      Navigator.of(context).pushReplacement(MaterialPageRoute
        (builder: (context)=>Loggedinscreen(),
      ),
      );
    }else{
      setState(() {
        isLoading=false;
      });
      showSnackBar(context, res);
    }
  }
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: SafeArea(
            child:
            SizedBox(
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios_new,
                            color:Theme.of(context).colorScheme.onPrimaryContainer,),
                          Text("Back"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: height/2.7,
                    child: Image.asset("assets/NGO_Eureka_copy-removebg-preview.png"),
                  ),

                  TextFieldInput(
                    textEditingController: nameController,
                    hintText: "Enter Your Name",
                    icon: Icons.drive_file_rename_outline,
                  ),
                  TextFieldInput(
                    textEditingController: numberController,
                    hintText: "Enter Your Mobile Number",
                    icon: Icons.call,
                  ),
                  TextFieldInput(
                    textEditingController: emailController,
                    hintText: "Enter Your Email",
                    icon: Icons.email,
                  ),
                  TextFieldInput(
                    textEditingController: passwordController,
                    hintText: "Enter Your PassWord",
                    icon: Icons.lock,
                    isPass: true,
                  ),
                  SizedBox(height: 10,),
                  MyButton(onTap: signUpUser, text: "Sign Up"),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?",
                        style:  TextStyle(fontSize: 16),
                      ),
                      GestureDetector(onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Loginscreen(),
                          ),
                        );
                      },
                        child: Text("  LogIn",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                      ),
                    ],
                  )
                ],

              ),)),
      ),
    );
  }
}
