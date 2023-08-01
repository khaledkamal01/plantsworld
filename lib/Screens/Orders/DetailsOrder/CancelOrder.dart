import 'package:flutter/material.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:plantsworld/Screens/Orders/DetailsOrder/DetailsOrder.dart';
import 'package:plantsworld/Screens/Orders/Orders.dart';

import '../../Notifications Screen.dart';
import '../../PaymentSystem/Cart.dart';

class CancelOrder extends StatefulWidget {
  CancelOrder({Key? key}) : super(key: key);

  @override
  State<CancelOrder> createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailsOrder()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 40,
              ),
              Center(
                child: Image.asset(
                  "Assets/Images/CancelOrder.png",
                  scale: 2.7,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  "نأسف لذلك يرجى اعطائنا السبب",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 17),
                ),
              ),
              CheckboxListTile(
                activeColor: Colors.white,
                checkColor: Colors.orange,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تأخر استلام الطلب'),
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
                    Text('اريد الطلب في وقت اخر'),
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
                    Text('لأسباب اخرى, الرجاء كتابة السبب'),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "الرجاء كتابة الاسباب هنا...",
                          hintTextDirection: TextDirection.rtl),
                      maxLines: 3,
                    )),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 20,
              ),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0XFF218C03),
                    ),
                    height: 50.0,
                    width: 250,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrdersScreen()),
                        );
                      },
                      child: Text(
                        "ارسال",
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Fonts'),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
