import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Notifications%20Screen.dart';
import 'package:plantsworld/Screens/PaymentSystem/Payment1.dart';

import '../../Models/CartModel.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  final List<Cart> cart = [
    Cart(
        image: "Assets/Images/plant3.png",
        title: "نبتة زاميا طويلة السيقان في حوض اسمنتي ",
        price: 20.00),
    Cart(
        image: "Assets/Images/plant3.png",
        title: "نبتة زاميا طويلة السيقان في حوض اسمنتي ",
        price: 20.00),
    Cart(
        image: "Assets/Images/plant3.png",
        title: "نبتة زاميا طويلة السيقان في حوض اسمنتي ",
        price: 20.00),
  ];
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
            "سلة المشتريات",
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
          ],
        ),
        leadingWidth: MediaQuery
            .sizeOf(context)
            .width / 4,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [

                      Container(

                        height: MediaQuery
                            .sizeOf(context)
                            .height / 8,
                        width: MediaQuery
                            .sizeOf(context)
                            .width *0.88,
                  // grey.shade300
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300)),
                        child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Text(
                                          cart[index].title,
                                          maxLines: 2,
                                          overflow: TextOverflow.visible,
                                          style: TextStyle(
                                            fontFamily: 'Fonts',
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                        MediaQuery
                                            .sizeOf(context)
                                            .height / 53,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(right: 10),
                                            child: Container(
                                              width:
                                              MediaQuery
                                                  .sizeOf(context)
                                                  .width /
                                                  10,
                                              height:
                                              MediaQuery
                                                  .sizeOf(context)
                                                  .width /
                                                  10,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade300,
                                                  borderRadius:
                                                  BorderRadius.circular(10)),
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.remove),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          SizedBox(width: 10),
                                          Container(
                                            width:
                                            MediaQuery
                                                .sizeOf(context)
                                                .width /
                                                10,
                                            height:
                                            MediaQuery
                                                .sizeOf(context)
                                                .width /
                                                10,
                                            decoration: BoxDecoration(
                                                color: Color(0XFFF2A007),
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: IconButton(
                                              color: Colors.white,
                                              onPressed: () {},
                                              icon: Icon(Icons.add),
                                            ),
                                          ),
                                          SizedBox(
                                            width:
                                            MediaQuery
                                                .sizeOf(context)
                                                .width /
                                                5,
                                          ),
                                          Text(
                                            "ر.س",
                                            style: TextStyle(
                                                fontFamily: 'Fonts',
                                                color: Color(0XFF218C03)),
                                          ),
                                          Text(
                                            cart[index].price.toString(),
                                            style: TextStyle(
                                                fontFamily: 'Fonts',
                                                color: Color(0XFF218C03)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                               // Image(image: AssetImage(cart[index].image,))
                                Image.asset(cart[index].image,width: 80,height: 80,)
                              ],
                            )),
                      ),
                      Align(
                        alignment:Alignment.topRight,
                        child: Container(
                          width:
                          MediaQuery
                              .sizeOf(context)
                              .width /
                              10,
                          height:
                          MediaQuery
                              .sizeOf(context)
                              .width /
                              10,
                          decoration:BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 187, 153),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.close,color: Colors.red,),
                            onPressed: () {
                              // Add your close icon button's action here
                            },
                          ),
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: MediaQuery
                        .sizeOf(context)
                        .height / 22,
                  );
                },
                itemCount: cart.length,
              ),
            ),
            Row(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ر.س",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                    ),
                    Text("10",
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
            Container(
              color: Colors.grey.shade300,
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
            SizedBox(height: MediaQuery
                .sizeOf(context)
                .height / 10,),
            Container(
              height: MediaQuery
                  .sizeOf(context)
                  .height / 14,
              width: MediaQuery
                  .sizeOf(context)
                  .width / 1.5,
              decoration: BoxDecoration(
                color: Color(0XFF218C03),
                borderRadius: BorderRadius.circular(25),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
                child: Text(
                  "التالي",
                  style: TextStyle(
                      fontFamily: 'Fonts', color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
