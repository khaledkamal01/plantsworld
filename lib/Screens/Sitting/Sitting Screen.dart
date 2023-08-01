import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/More/More.dart';
import 'package:plantsworld/Screens/Sitting/Informations%20Policy/Informations%20Policy.dart';
import 'package:plantsworld/Screens/Sitting/Privacy%20Policy/Privacy%20Policy.dart';
import 'package:plantsworld/Screens/Sitting/Return%20Policy/Return%20Policy.dart';
import 'package:plantsworld/Screens/Sitting/Who%20Are%20We.dart';

import '../Home/home.dart';
import '../Notifications Screen.dart';
import '../PaymentSystem/Cart.dart';
import 'Custom Container.dart';
import 'Delivery Policy/Delivery Policy.dart';

class SittingScreen extends StatefulWidget {
  const SittingScreen({Key? key}) : super(key: key);

  @override
  State<SittingScreen> createState() => _SittingScreenState();
}

class _SittingScreenState extends State<SittingScreen> {
  bool _isCheckedArabic = false;
  bool _isCheckedEnglish = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "الاعدادات",
            style: TextStyle(color: Colors.black, fontFamily: 'Fonts'),
          ),
        ),
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationsScreen()));
                },
                icon: Image.asset(
                  'Assets/Icons/notification.png',
                  width: 25,
                  height: 25,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                icon: Image.asset(
                  'Assets/Icons/cart.png',
                  width: 25,
                  height: 25,
                )),
          ],
        ),
        leadingWidth: MediaQuery.sizeOf(context).width / 4,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => More()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 25,
          ),
          CustomContainer(
            text: 'اللغة',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    titlePadding: EdgeInsets.symmetric(horizontal: 30),
                    actionsPadding: EdgeInsets.symmetric(horizontal: 20),
                    title: Center(
                      child: Text(
                        'اعدادات اللغة',
                        style: TextStyle(fontSize: 18, fontFamily: 'Fonts'),
                      ),
                    ),
                    actions: <Widget>[
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(

                                activeColor: Colors.green,
                                checkColor: Colors.black,
                                value: _isCheckedArabic,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isCheckedArabic = value ?? false;
                                    _isCheckedEnglish = !_isCheckedArabic;
                                  });
                                },
                              ),
                              Text(
                                "اللغة العربية",
                                style: TextStyle(fontFamily: 'Fonts'),
                              )
                            ],
                          ),
                          Divider(
                            endIndent: 15,
                            indent: 15,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(

                                activeColor: Colors.green,
                                checkColor: Colors.black,
                                value: _isCheckedEnglish,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isCheckedEnglish = value ?? false;
                                    _isCheckedArabic = !_isCheckedEnglish;
                                  });
                                },
                              ),
                              Text(
                                "English",
                                style: TextStyle(fontFamily: 'Fonts'),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0XFF218C03),
                                ),
                                height: 40.0,
                                width: 220,
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SittingScreen()),
                                    );
                                  },
                                  child: Text(
                                    "تم",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
          ),
          CustomContainer(
            text: 'العملة',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {
              {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return StatefulBuilder(builder: (context, setNewStat) {
                      return AlertDialog(
                        titlePadding: EdgeInsets.symmetric(horizontal: 30),
                        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
                        title: Center(
                          child: Text(
                            'اعدادات العملة',
                            style: TextStyle(fontSize: 18, fontFamily: 'Fonts'),
                          ),
                        ),
                        actions: <Widget>[
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    activeColor: Colors.white,
                                    checkColor: Color(0XFF218C03),
                                    value: _isChecked,
                                    onChanged: (bool? value) {
                                      setNewStat(() {
                                        _isChecked = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "دينار اردني",
                                    style: TextStyle(fontFamily: 'Fonts'),
                                  )
                                ],
                              ),
                              Divider(
                                endIndent: 15,
                                indent: 15,
                                color: Colors.grey,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    activeColor: Colors.white,
                                    checkColor: Color(0XFF218C03),
                                    value: !_isChecked,
                                    onChanged: (bool? value) {
                                      setNewStat(() {
                                        _isChecked = value!;
                                      });
                                    },
                                  ),
                                  Text(
                                    "دولار امريكي",
                                    style: TextStyle(fontFamily: 'Fonts'),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Color(0XFF218C03),
                                    ),
                                    height: 40.0,
                                    width: 220,
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => More()),
                                        );
                                      },
                                      child: Text(
                                        "تم",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      );
                    });
                  },
                );
              }
            },
          ),
          CustomContainer(
            text: 'من نحن',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WhoAreWe()));
            },
          ),
          CustomContainer(
            text: 'سياسة التوصيل',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryPolicy()));

            },
          ),
          CustomContainer(
            text: 'سياسة الاشتراكات',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>InformationsPolicy()));

            },
          ),
          CustomContainer(
            text: 'سياسة الارجاع',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReturnPolicy()));

            },
          ),
          CustomContainer(
            text: 'خصوصية المعلومات',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {},
          ),
          CustomContainer(
            text: 'الشروط و الاحكام',
            image: AssetImage("Assets/Images/العملة.png"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()));

            },
          ),
        ],
      ),
    );
  }
}
