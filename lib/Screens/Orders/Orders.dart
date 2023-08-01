// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/PaymentSystem/Cart.dart';

import '../../Models/OrdersModel.dart';
import '../Notifications Screen.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersState();
}

class _OrdersState extends State<OrdersScreen> {
  final List<Orders> orders = [
    Orders(orderNum: 6666, date: "25/2/2012, 05:30 pm", price: 50),
    Orders(orderNum: 6666, date: "date", price: 50),
    Orders(orderNum: 6666, date: "date", price: 50),
    Orders(orderNum: 6666, date: "date", price: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Text(
                "الملغاه",
                style: TextStyle(color: Colors.black),
              ),
              Text("المكتملة", style: TextStyle(color: Colors.black)),
              Text("الحالية", style: TextStyle(color: Colors.black)),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "طلباتي",
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));

                },
                icon:Image.asset(
                  'Assets/Icons/notification.png',
                  width: 25,
                  height: 25,
                )
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));

                },
                icon: Image.asset(
                  'Assets/Icons/cart.png',
                  width: 25,
                  height: 25,
                )
              ),
            ],
          ),
          leadingWidth: MediaQuery.sizeOf(context).width / 4,
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: orders.length,
                itemBuilder: (_, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text(orders[index].orderNum.toString()),
                                  ),
                                  Text(
                                    "رقم الطلب  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                                    child: Row(children: [
                                      Text(" ر.س  "+orders[index].price.toString()),
                                      Icon(Icons.monetization_on_outlined,size: 20,color: Colors.grey,),
                                    ],),
                                  ),
                                  Row(children: [
                                    Text(orders[index].date.toString()),
                                    Icon(Icons.access_time_outlined,size: 20,color: Colors.grey,),
                                  ],)


                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: orders.length,
                itemBuilder: (_, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      // Set the shape to circle
                                      border: Border.all(
                                        color: Colors.orange, // Border color
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "تقييم الطلب",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(orders[index].orderNum.toString()),
                                      Text(
                                        "رقم الطلب ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                                    child: Row(children: [
                                      Text(" ر.س  "+orders[index].price.toString()),
                                      Icon(Icons.monetization_on_outlined,size: 20,color: Colors.grey,),
                                    ],),
                                  ),
                                  Row(children: [
                                    Text(orders[index].date.toString()),
                                    Icon(Icons.access_time_outlined,size: 20,color: Colors.grey,),
                                  ],)


                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: orders.length,
                itemBuilder: (_, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      // Set the shape to circle
                                      border: Border.all(
                                        color: Colors.orange, // Border color
                                        width: 2.0, // Border width
                                      ),
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "تقييم الطلب",
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(orders[index].orderNum.toString()),
                                      Text(
                                        "رقم الطلب ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                                    child: Row(children: [
                                      Text(" ر.س  "+orders[index].price.toString()),
                                      Icon(Icons.monetization_on_outlined,size: 20,color: Colors.grey,),
                                    ],),
                                  ),
                                  Row(children: [
                                    Text(orders[index].date.toString()),
                                    Icon(Icons.access_time_outlined,size: 20,color: Colors.grey,),
                                  ],)


                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
