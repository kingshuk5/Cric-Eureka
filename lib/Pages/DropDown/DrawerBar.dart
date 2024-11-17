import 'package:cric_eureka/Pages/DropDown/AboutUs.dart';
import 'package:cric_eureka/Pages/DropDown/ContactUs.dart';
import 'package:cric_eureka/Pages/DropDown/PrivacyPolicy.dart';
import 'package:cric_eureka/Pages/DropDown/Terms.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

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
          SizedBox(height: 10,),
          ListTile(
              leading: Icon(Icons.ondemand_video_rounded),
              title: Text("YouTube"),
              onTap: (){
                const link="https://www.youtube.com/@ngoeureka";
                launchUrl(
                  Uri.parse(link),
                  mode: LaunchMode.externalApplication,
                );
              },
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.facebook_rounded),
            title: Text("FaceBook"),
            onTap: (){
              const link="https://www.facebook.com/haldia.eureka.7";
              launchUrl(
                Uri.parse(link),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.insert_photo_outlined),
            title: Text("Instagram"),
            onTap: (){
              const link="https://www.instagram.com/ngoeureka";
              launchUrl(
                Uri.parse(link),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.web_sharp),
            title: Text("Our Website"),
            onTap: (){
              const link="https://www.ngoeureka.com";
              launchUrl(
                Uri.parse(link),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
    ],
    ),

    );
    }
  }
