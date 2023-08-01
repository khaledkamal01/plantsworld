import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Orders/Orders.dart';

import '../../../Models/OrdersModel.dart';
import '../../Home/home.dart';
import '../../Notifications Screen.dart';
import '../../PaymentSystem/Cart.dart';
import 'deliveryTracker.dart';
import 'ordersindetails.dart';

class DetailsOrder extends StatefulWidget {
  const DetailsOrder({Key? key}) : super(key: key);

  @override
  State<DetailsOrder> createState() => _DetailsOrderState();
}

class _DetailsOrderState extends State<DetailsOrder> {
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
            "#58246",
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
                    MaterialPageRoute(builder: (context) => OrdersScreen()));
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 35,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width / 1.1,
                height: MediaQuery.sizeOf(context).height / 5,
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "  حالة الطلب",
                      style: TextStyle(
                          fontFamily: 'Font',
                          color: Color(0XFF218C03),
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        "Assets/Images/greenBoxOrder.png",
                        width: MediaQuery.sizeOf(context).width / 15,
                        height: MediaQuery.sizeOf(context).height / 15,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                color: Colors.grey,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height / 4.6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DeliveryTracker(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "  المنتجات",
                      style: TextStyle(
                          fontFamily: 'Font',
                          color: Color(0XFF218C03),
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        "Assets/Images/greenBoxOrder.png",
                        width: MediaQuery.sizeOf(context).width / 15,
                        height: MediaQuery.sizeOf(context).height / 15,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                color: Colors.grey,
              ),
              Container(
                  height: MediaQuery.sizeOf(context).height / 4.6,

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: OrdersListInDetails(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "  الفاتورة",
                      style: TextStyle(
                          fontFamily: 'Font',
                          color: Color(0XFF218C03),
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        "Assets/Images/فاتورة.png",
                        width: MediaQuery.sizeOf(context).width / 15,
                        height: MediaQuery.sizeOf(context).height / 15,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ر.س",
                          style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                        ),
                        Text("120",
                            style: TextStyle(fontFamily: 'Fonts', fontSize: 20)),
                      ],
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        height: 25,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    Text("المجموع",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ر.س",
                          style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                        ),
                        Text("120",
                            style: TextStyle(fontFamily: 'Fonts', fontSize: 20)),
                      ],
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        height: 25,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    Text("الشحن",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ر.س",
                          style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                        ),
                        Text("120",
                            style: TextStyle(fontFamily: 'Fonts', fontSize: 20)),
                      ],
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                        height: 25,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                    Text("الخصم",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20))
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "ر.س",
                            style: TextStyle(
                                fontFamily: 'Fonts',
                                fontSize: 20,
                                color: Color(0XFF218C03)),
                          ),
                          Text("130",
                              style: TextStyle(
                                  fontFamily: 'Fonts',
                                  fontSize: 20,
                                  color: Color(0XFF218C03))),
                        ],
                      ),
                      Text("المجموع الكلي",
                          style: TextStyle(
                              fontFamily: 'Fonts',
                              fontSize: 20,
                              color: Color(0XFF218C03)))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 10,
              ),
              Center(
                child: Container(
                  height: MediaQuery.sizeOf(context).height / 18,
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFF218C03)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Text(
                      "الغاء الطلب",
                      style: TextStyle(
                          fontFamily: 'Fonts',
                          color: Color(0XFF218C03),
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),

    );
  }
}
