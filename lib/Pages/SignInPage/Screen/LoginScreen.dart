import 'package:cric_eureka/HomePageController.dart';
import 'package:cric_eureka/Pages/HomePage/HomePage.dart';
import 'package:cric_eureka/Pages/SignInPage/Screen/SignUpScreen.dart';
import 'package:cric_eureka/Pages/SignInPage/Widgets/button.dart';
import 'package:cric_eureka/Pages/SignInPage/Widgets/resetPassword.dart';
import 'package:cric_eureka/Pages/SignInPage/Widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../DropDown/DrawerBar.dart';
import '../Services/authentication.dart';
import '../Widgets/showSnackBar.dart';
import 'LoggedInScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<Loginscreen> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  bool isLoading =false;

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void loginUsers()async{
    String res = await AuthServices().loginUser(
      email:emailController.text,
      password: passwordController.text,
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
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>HomePage(),
                          ),
                        );
                      },
                        child:Icon(
                          Icons.home,
                          color: Theme.of(context).colorScheme.onSurface,
                          size: 35,
                        )
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
                  SizedBox(
                    width: double.infinity,
                    height: height/4,
                    child: Image.asset("assets/NGO_Eureka_copy-removebg-preview.png"),
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
                  MyButton(onTap: loginUsers, text: "Log In"),
                  ForgotPassword(),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",
                        style:  TextStyle(fontSize: 16),
                      ),
                      GestureDetector(onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Signupscreen(),
                          ),
                        );
                      },
                        child: Text("  SignUp",
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
