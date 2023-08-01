import 'package:flutter/cupertino.dart';

import '../../../Models/OrdersInDetailsModel.dart';

class OrdersListInDetails extends StatefulWidget {
  const OrdersListInDetails({Key? key}) : super(key: key);

  @override
  State<OrdersListInDetails> createState() => _OrdersListInDetailsState();
}

class _OrdersListInDetailsState extends State<OrdersListInDetails> {
  List<OrdersInDetails> orderindetails = [
    OrdersInDetails(
        image: "Assets/Images/plant3.png",
        price: 50.00,
        title: "نبتة زاميا طويلة السيقان في حوض اسمنتي",
        count: 2),
    OrdersInDetails(
        image: "Assets/Images/plant3.png",
        price: 50.00,
        title: "نبتة زاميا طويلة السيقان في حوض اسمنتي",
        count: 2),
    OrdersInDetails(
        image: "Assets/Images/plant3.png",
        price: 50.00,
        title: "نبتة زاميا طويلة السيقان في حوض اسمنتي",
        count: 2)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10);
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            orderindetails[index].price.toString() + "ر.س",
                            style: TextStyle(
                                color: Color(0XFFF2A007), fontSize: 16),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Container(
                              width: MediaQuery.sizeOf(context).width/2,
                              child: Text(
                                orderindetails[index].title,
                                style: TextStyle(
                                    fontFamily: 'Fonts',
                                    fontSize: 15,
                                    overflow: TextOverflow.visible),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          orderindetails[index].count.toString() + " X",
                          style:
                              TextStyle(color: Color(0XFF218C03), fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 70,
                child: Image.asset(
                  orderindetails[index].image,
                  scale: 4,
                ),
              )
            ],
          ),
        );
      },
      itemCount: orderindetails.length,
    );
  }
}
