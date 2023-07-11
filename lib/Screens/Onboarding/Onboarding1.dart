import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/LoginSystem/Login.dart';

import 'Onboarding2.dart';

class OnboardingScreen1 extends StatelessWidget {
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
                Image.asset(
                  "Assets/Images/onboarding11.png",
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 32.0),
                Text(
                  "hghgghghghh",
                  style: TextStyle(
                    color: Color(0XFF012603),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,fontFamily: 'Fonts'
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19),
                  child: Text(
                    "متجر كامل لبيع كل انواع النباتات بالاضافة الى التوصيل لجميع انحاء المملكة الاردنية فقط متجر كامل لبيع كل انواع النباتات بالاضافة الى ",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                        fontFamily: 'Fonts'
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0XFF218C03)),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Onboarding2()),
                        );
                      },
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
                      width: 200,
                    ),
                    TextButton(
                      child: Text(
                        "تخطي",
                        style: TextStyle(color: Colors.grey, fontSize: 20,fontFamily: 'Fonts'),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
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
