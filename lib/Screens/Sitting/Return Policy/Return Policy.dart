import 'package:flutter/material.dart';

import '../../Notifications Screen.dart';
import '../../PaymentSystem/Cart.dart';
import '../Sitting Screen.dart';

class ReturnPolicy extends StatelessWidget {
  const ReturnPolicy({Key? key}) : super(key: key);

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
            "سياسة الارجاع",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SittingScreen()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage("Assets/Images/Return Policy.png"),
                        fit: BoxFit.cover),
                  ),
                  height: MediaQuery.sizeOf(context).height / 5,
                  width: MediaQuery.sizeOf(context).width,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 50,
                ),
                Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      "data",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Fonts',
                          color: Colors.grey),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
