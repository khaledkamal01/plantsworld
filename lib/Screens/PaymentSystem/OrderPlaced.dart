import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Home/NavigationBar.dart';
import 'package:plantsworld/Screens/Home/home.dart';
import 'package:plantsworld/Screens/Orders/Orders.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "Assets/Images/OrderPlaced.png",
              width: MediaQuery.sizeOf(context).width / 2,
              height: MediaQuery.sizeOf(context).height / 2,
            ),
            Text(
              "تم ارسال طلبك بنجاح",
              style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
            ),
            Text(
              "تم ارسال طلبك بنجاح قم بتتبع طلبك",
              style: TextStyle(
                  fontFamily: 'Fonts',
                  fontSize: 15,
                  color: Colors.grey.shade700),
            ),
            Text(
              "من خلال قائمة طلباتي",
              style: TextStyle(
                  fontFamily: 'Fonts',
                  fontSize: 15,
                  color: Colors.grey.shade700),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 20,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 16,
              width: MediaQuery.sizeOf(context).width / 1.5,
              decoration: BoxDecoration(
                color: Color(0XFF218C03),
                borderRadius: BorderRadius.circular(25),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrdersScreen()));
                },
                child: Text(
                  "تتبع الطلب",
                  style: TextStyle(
                      fontFamily: 'Fonts', color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 50,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 16,
              width: MediaQuery.sizeOf(context).width / 1.5,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFF218C03)),
                borderRadius: BorderRadius.circular(25),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navigation()));
                },
                child: Text(
                  "الرئيسية",
                  style: TextStyle(
                      fontFamily: 'Fonts',
                      color: Color(0XFF218C03),
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
