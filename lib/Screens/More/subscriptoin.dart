import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/PaymentSystem/Cart.dart';

import '../Notifications Screen.dart';
import 'More.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "اشتراكي",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leadingWidth: MediaQuery.sizeOf(context).width / 4,
        leading: Row(

            children: [

          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));

            },
            icon: Image.asset(
              'Assets/Icons/notification.png',
              width: 25,
              height: 25,
            )
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));

            },
            icon: Image.asset("Assets/Icons/cart.png")
          ),

        ]),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => More()),
                );
              },
              icon: Icon(
                Icons.navigate_next,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " / شهر",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Text(
                    " د.أ 500",
                    style: TextStyle(color: Color(0XFF218C03), fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Text("شهريا",
                      style: TextStyle(color: Colors.black, fontSize: 20))
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height/90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("12/2/2001"),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width/20,
                ),
                Text(
                  "تاريخ الاشتراك",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width/20,
                ),
                Icon(
                  Icons.calendar_month,
                  color: Color(0XFF218C03),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("12/2/2001"),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width/20,
                  ),
                  Text(
                    "تاريخ انتهاء الاشتراك",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width/20,
                  ),
                  Icon(
                    Icons.calendar_month,
                    color: Color(0XFF218C03),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height/90,
            ),
            Text(
              "مميزات الاشتراك",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height/90,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Text("تشخيص جميع انواع النباتات"),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height/30,
                    width: MediaQuery.sizeOf(context).width/14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange.shade100,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Color(0XFFF2A007),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Text("عدد لا نهائي من الاستشارات من الخبراء"),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height/30,
                    width: MediaQuery.sizeOf(context).width/14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange.shade100,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Color(0XFFF2A007),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Text("يتم تجديد الاشتراك شهريا"),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height/30,
                    width: MediaQuery.sizeOf(context).width/14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange.shade100,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Color(0XFFF2A007),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Text("خبرة لا تقل عن 5 سنوات في الزراعة"),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height/30,
                    width: MediaQuery.sizeOf(context).width/14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange.shade100,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Color(0XFFF2A007),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Text("دفع امن معاملات امنه و مشفرة",style: TextStyle(fontFamily: 'Fonts'),),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height/30,
                    width: MediaQuery.sizeOf(context).width/14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange.shade100,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Color(0XFFF2A007),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFF218C03),
                    ),
                    height: MediaQuery.sizeOf(context).height/20,
                    width: MediaQuery.sizeOf(context).width/1.5,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "تسجيل دخول",
                        style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
