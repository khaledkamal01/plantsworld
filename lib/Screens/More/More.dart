import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/LoginSystem/Login.dart';
import 'package:plantsworld/Screens/More/Contact%20us.dart';
import 'package:plantsworld/Screens/More/profile.dart';
import 'package:plantsworld/Screens/More/subscriptoin.dart';

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
          title: Text('اعدادات العملة', style: TextStyle(fontFamily: 'Fonts'),),
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
              onPressed: () {},
              icon: Image.asset(
                'Assets/Icons/notification.png',
                width: 25,
                height: 25,
              )
            ),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'Assets/Icons/cart.png',
                  width: 25,
                  height: 25,
                )
            ),
          ],
        ),
        leadingWidth: MediaQuery
            .sizeOf(context)
            .width / 4,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "محمد كريم حمدان",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Fonts'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "الملف الشخصي",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.person_2_outlined,
                                color: Color(0XFF218C03),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {

                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "مشاركة التطبيق",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.share,
                                color: Color(0XFF218C03),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "تواصل معنا",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.phone_in_talk,
                                color: Color(0XFF218C03),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "تقييم التطبيق",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.asset(
                                  'Assets/Icons/star.png',
                                  width: 25,
                                  height: 25,
                                )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Subscription()),
                  );
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "اشتراكي",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.asset(
                                  'Assets/Images/subscribtion.png',
                                  width: 25,
                                  height: 25,
                                )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {
                  {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(builder: (context, setNewStat) {
                          return AlertDialog(
                            titlePadding: EdgeInsets.symmetric(horizontal: 30),
                            actionsPadding:
                            EdgeInsets.symmetric(horizontal: 20),
                            title: Center(
                              child: Text(
                                'اعدادات العملة',
                                style: TextStyle(
                                    fontSize: 18, fontFamily: 'Fonts'),
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
                                      Text("دينار اردني",
                                        style: TextStyle(fontFamily: 'Fonts'),)
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
                                      Text("دولار امريكي",
                                        style: TextStyle(fontFamily: 'Fonts'),)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30.0),
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
                                            style:
                                            TextStyle(color: Colors.white),
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
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "الاعدادات",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.settings,
                                color: Color(0XFF218C03),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "شركائنا",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.people_alt,
                                color: Color(0XFF218C03),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const LoginScreen(),));
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey.shade300,
                          size: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "تسجيل الخروج",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontFamily: 'Fonts'),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Image.asset(
                                  'Assets/Icons/Logout@2x.png',
                                  width: 25,
                                  height: 25,
                                )
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
