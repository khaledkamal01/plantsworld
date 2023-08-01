import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/LoginSystem/Login-1.dart';
import 'package:plantsworld/Screens/LoginSystem/Login.dart';

import 'OnboardingScreen3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("Assets/Images/Onboarding2.png"),
                SizedBox(height: 32.0),
                Text(
                  "التقط الصورة و دعنا نهتم بها ",
                  style: TextStyle(
                    color: Color(0XFF012603),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                      ,fontFamily: 'Fonts'
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      "هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة, لقد تم توليد هذا النص من مولد النص العربي, حيث يمكنك ان تولد مثل هذا النص او",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,fontFamily: 'Fonts'
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height/15,
                      width: MediaQuery.sizeOf(context).width/35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height/15,
                      width: MediaQuery.sizeOf(context).width/35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0XFF218C03)),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width/40,
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height/15,
                      width: MediaQuery.sizeOf(context).width/35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height/40,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnboardingScreen3()),
                      );},
                      child: Stack(
                        children: [
                          Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10.0,
                            top: 10.0,
                            right: 10.0,
                            bottom: 10.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0XFF218C03),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width/2,
                    ),
                    TextButton(
                      child: Text(
                        "تخطي",
                        style: TextStyle(color: Colors.grey, fontSize: 20,fontFamily: 'Fonts'),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
