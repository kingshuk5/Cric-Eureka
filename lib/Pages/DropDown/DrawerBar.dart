import 'package:cric_eureka/Pages/DropDown/AboutUs.dart';
import 'package:cric_eureka/Pages/DropDown/ContactUs.dart';
import 'package:cric_eureka/Pages/DropDown/PrivacyPolicy.dart';
import 'package:cric_eureka/Pages/DropDown/Terms.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(height: 30,),
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
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/NGO_Eureka_copy-removebg-preview.png',
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("About Us"),
            onTap: (){
              Get.to(Aboutus());
            }
          ),
          SizedBox(height: 10,),
          ListTile(
              leading: Icon(Icons.comment),
              title: Text("Terms And Conditions"),
              onTap: (){
                Get.to(Terms());
              }
          ),
          SizedBox(height: 10,),
          ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Privacy Policy"),
              onTap: (){
                Get.to(Privacypolicy());
              }
          ),
          SizedBox(height: 10,),
          ListTile(
              leading: Icon(Icons.contacts_rounded),
              title: Text("Contact Us"),
              onTap: (){
                Get.to(Contactus());
              }
          ),

    ],
    ),

    );
    }
  }
