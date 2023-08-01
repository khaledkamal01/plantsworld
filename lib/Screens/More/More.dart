import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/LoginSystem/Login.dart';
import 'package:plantsworld/Screens/More/Contact%20us.dart';
import 'package:plantsworld/Screens/More/profile.dart';
import 'package:plantsworld/Screens/More/subscriptoin.dart';
import 'package:plantsworld/Screens/PaymentSystem/Cart.dart';

import '../Notifications Screen.dart';
import '../Sitting/Custom Container.dart';

class More extends StatefulWidget {
  More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  bool _isChecked = false;

  void Dialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'اعدادات العملة',
            style: TextStyle(fontFamily: 'Fonts'),
          ),
          content: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                ),
                height: 50.0,
                width: 250,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => More()),
                    );
                  },
                  child: Text(
                    "تم",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            height: 180,
            width: 180,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("Assets/Images/profile.png"),
                fit: BoxFit.cover,
              ),
            ),
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "محمد كريم حمدان",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Fonts'),
          ),
          CustomContainer(
            text: 'الملف الشخصي',
            image: AssetImage("Assets/Images/person.png"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          CustomContainer(
            text: 'مشاركة التطبيق',
            image: AssetImage("Assets/Images/share.png"),
            onTap: () {

            },
          ),
          CustomContainer(
            text: 'تواصل معنا',
            image: AssetImage("Assets/Images/phone.png"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs()));
            },
          ),
          CustomContainer(
            text: 'تقييم التطبيق',
            image: AssetImage("Assets/Icons/star.png"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUs()));
            },
          ),
          CustomContainer(
            text: 'اشتراكي',
            image: AssetImage("Assets/Images/subscribtion.png"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Subscription()));
            },
          ),
          CustomContainer(
            text: 'الاعدادات',
            image: AssetImage("Assets/Images/sitting.png"),
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
              text: 'شركائنا',
              image: AssetImage("Assets/Images/partners.png"),
              onTap: () {}),
          CustomContainer(
              text: 'تسجيل الخروج',
              image: AssetImage("Assets/Icons/Logout@2x.png"),
              onTap: () {}),

        ],
      ),
    );
  }
}
