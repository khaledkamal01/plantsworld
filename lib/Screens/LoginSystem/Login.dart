import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'Login-1.dart';
import 'OTP.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(


                    image: AssetImage("Assets/Images/loginImage.png")),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      Text(
                        "اهلا و سهلا بك",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF012603),fontFamily: 'Fonts'),
                      ),
                      Text(
                        "قم بتسجيل دخول لبدء رحلتك معنا ",
                        style: TextStyle(color: Colors.grey,fontFamily: 'Fonts'),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height/50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "رقم الجوال",
                            style: TextStyle(color: Color(0XFF012603), fontSize: 25,fontFamily: 'Fonts'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height/50,
                      ),
                      IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        languageCode: "en",
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        onCountryChanged: (country) {
                          print('Country changed to: ' + country.name);
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height/35,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0XFF218C03),
                          ),
                          height: MediaQuery.sizeOf(context).height/20,
                          width: MediaQuery.sizeOf(context).width/2,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Otp()),
                              );
                            },
                            child: Text(
                              "تسجيل دخول",
                              style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                            ),
                          ))
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
