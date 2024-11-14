import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
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
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Terms And Conditions",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          letterSpacing:1.5,
                        ),),
                    ],
                  ),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          'assets/NGO_Eureka_copy-removebg-preview.png',
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(50),

                        ),
                        child: Text("MEMBERSHIP",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            letterSpacing:1.5,
                          ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "GENERAL MEMBER:" ,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Any person, qualified to be member and paying prescribed ordinary membership fee may be admitted as ordinary members of the Society. That member must pay Rs 50 per month." ,
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "VOLUNTEERSHIP MEMBER :" ,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Anyone wishing to become a volunteer member must abide by the following conditions (a) First, there must be a general membership of 3 months. (b) We need to be physically present in our training programs. The day of the training program will be announced via mail or WhatsApp message. If no one is present, he should be informed in advance. (c) Volunteers must be present in their own district when the program is running in a district. (d) The organization can appoint him as the incumbent of any program as per the qualification and desire of the volunteer. (e) Before leaving a voluntary membership one has to apply with reasons. (f) Voluntary membership can be canceled without any notice, without any notice." ,
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(50),
                        
                          ),
                          child: Flexible(
                            child: Text(
                              "CESSATION OF MEMBERSHIP: " ,
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Any member shall cease to be a member" ,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                            "(a) on the acceptance of his/her resignation from membership,\n(b) on his/her becoming insane or insolvent,\n(c) on his conviction of any offence in connection with the formation, promotion, management or conduct of affair of society or a body corporate or of any offence involving moral turpitude.\n(d) if the member don't pay motnthly fee for 4 continuous month",
                            style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(20),
                        
                          ),
                          child: Flexible(
                            child: Text(
                              "RIGHTS AND OBLIGATIONS OF MEMBERS:" ,
                              style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).colorScheme.onSecondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Any ordinary members of the society has the right." ,
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "(a) to elect and to be elected in any election of the society;\n(b) to submit suggestion for discussion to The Governing Body and sub committee on any matter relating to the society;\n(c) to inspect the accounts and the proceedings of the meetings of the society on appointment with the secretary;\n(d) to pay his subscription within the prescribed time. Defaulting members shall not be allowed to take part or vote in a meeting. Members shall have one vote each.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Flexible(
                          child: Text(
                            "EXPULSION & REMOVAL:" ,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Frequent actions of any member, if found by the Governing Body is detrimental to the to the interest and is in violation of the rules and. regulations of the Society, he/she may be after due enquiry, censured, suspended or expelled from the membership by the Governing Body. In that case the Governing Body shall first serve the member concerned with a show cause showing therein the the charges framed and ask him/her to to submit his/her statement of defence within a month. On receipt of the explanation, the Governing Body shall have the power to take suitable action against the delinquent member after allowing him/her to defend his case. If no reply to the show cause notice is received within a month, the Governing Body may take an ex-parte decision. For any act of expulsion or termination no such ember shall be entitled to prefer any claim for compensation or damage even if proved on subsequent date that such act of expulsion or termination was wrongful and/or unlawful",
                          style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Flexible(
                          child: Text(
                            "ACCESS FROM ALL OVER:" ,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "a. You can browse the website from anywhere in the world without membership.\nb. You can be a citizen of any country, you can take membership on our website.\nc. without membership the donation will be accepted at the website.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Flexible(
                          child: Text(
                            "VIOLATION OF THIS TERMS:" ,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "We may investigate any unauthorized violation of these Terms by our site. We can take legal action if we deem it appropriate. If we determine that you have violated these terms or laws, or for any other reason, we may block your account and prevent you from accessing the Site at any time without notice.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          )
      ),
    );
  }
}
