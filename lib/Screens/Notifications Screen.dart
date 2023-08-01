import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/PaymentSystem/Cart.dart';

import '../Models/NotificationsModel.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  final List<Notifications> notifications = [
    Notifications(
        title: "هناك عروض جبارة على انواع جميلة من النباتات لا تفوتها",
        date: "6/6/2022"),
    Notifications(
        title: "هناك عروض جبارة على انواع جميلة من النباتات لا تفوتها",
        date: "6/6/2022"),
    Notifications(
        title: "هناك عروض جبارة على انواع جميلة من النباتات لا تفوتها",
        date: "6/6/2022"),
    Notifications(
        title: "هناك عروض جبارة على انواع جميلة من النباتات لا تفوتها",
        date: "6/6/2022"),
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
            "الاشعارات",
            style: TextStyle(color: Colors.black, fontFamily: 'Fonts'),
          ),
        ),
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
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
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: MediaQuery.sizeOf(context).height / 8,
              width: MediaQuery.sizeOf(context).width / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              notifications[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                fontFamily: 'Fonts',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 255, 187, 153),
                            child: Icon(
                              Icons.notification_important_outlined,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            notifications[index].date,
                            style: TextStyle(
                              fontFamily: 'Fonts',
                              fontSize: 15,color: Colors.grey
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),

            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: MediaQuery.sizeOf(context).height / 22,
            );
          },
          itemCount: notifications.length,
        ),
      ),
    );
  }
}
