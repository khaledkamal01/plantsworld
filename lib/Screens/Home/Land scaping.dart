import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Home/home.dart';

import '../Notifications Screen.dart';
import '../PaymentSystem/Cart.dart';

class LandScapingScreen extends StatefulWidget {
  const LandScapingScreen({Key? key}) : super(key: key);

  @override
  State<LandScapingScreen> createState() => _LandScapingScreenState();
}

class _LandScapingScreenState extends State<LandScapingScreen> {
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "تنسيق الحدائق",
          style: TextStyle(fontFamily: 'Fonts'),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
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
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "الرجاء اختيار حجم الحديقة",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 17),
                ),
              ],
            ),
            CheckboxListTile(
              activeColor: Colors.white,
              checkColor: Colors.orange,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'كبير',
                    style: TextStyle(
                        fontFamily: 'Fonts', color: Colors.grey.shade500),
                  ),
                ],
              ),
              value: checkbox1,
              onChanged: (value) {
                setState(() {
                  checkbox1 = value ?? false;
                  checkbox2 = false;
                  checkbox3 = false;
                });
              },
            ),
            CheckboxListTile(
              activeColor: Colors.white,
              checkColor: Colors.orange,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'متوسط',
                    style: TextStyle(
                        fontFamily: 'Fonts', color: Colors.grey.shade500),
                  ),
                ],
              ),
              value: checkbox2,
              onChanged: (value) {
                setState(() {
                  checkbox1 = false;
                  checkbox2 = value ?? false;
                  checkbox3 = false;
                });
              },
            ),
            CheckboxListTile(
              activeColor: Colors.white,
              checkColor: Colors.orange,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'صغير',
                    style: TextStyle(
                        fontFamily: 'Fonts', color: Colors.grey.shade500),
                  ),
                ],
              ),
              value: checkbox3,
              onChanged: (value) {
                setState(() {
                  checkbox1 = false;
                  checkbox2 = false;
                  checkbox3 = value ?? false;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "  (ان وجد)",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Fonts',
                      color: Color(0XFF012603)),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 50,
                ),
                Text(
                  "ارفق صورة للحديقة  ",
                  style: TextStyle(
                    fontFamily: 'Fonts',
                    color: Color(0XFF012603),
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 40,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300)),
              child: TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.attach_file_outlined),
                )),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 5,
            ),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0XFF218C03),
                  ),
                  height: MediaQuery.sizeOf(context).height / 20,
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "ارسال",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Fonts'),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
