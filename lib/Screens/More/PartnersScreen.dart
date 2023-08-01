import 'package:flutter/material.dart';

import '../../Models/PartnersModel.dart';
import '../Home/NavigationBar.dart';
import '../Notifications Screen.dart';
import '../PaymentSystem/Cart.dart';

class PartnersScreen extends StatefulWidget {
  const PartnersScreen({Key? key}) : super(key: key);

  @override
  State<PartnersScreen> createState() => _PartnersScreenState();
}

class _PartnersScreenState extends State<PartnersScreen> {
  final List<Partners> partners = [
    Partners(image: "image", text: "text"),
    Partners(image: "image", text: "text"),
    Partners(image: "image", text: "text"),
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
            "شركائنا",
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
                    MaterialPageRoute(builder: (context) => Navigation()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          partners[index].text,
                          style: TextStyle(
                              overflow: TextOverflow.visible,
                              color: Colors.grey,
                              fontFamily: 'Fonts',
                              fontSize: 15),
                        )),
                    SizedBox(height: MediaQuery.sizeOf(context).height / 20),
                    CircleAvatar(
                      backgroundImage: AssetImage(partners[index].image),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, index) {
            return SizedBox(height: MediaQuery.sizeOf(context).height / 20);
          },
          itemCount: partners.length),
    );
  }
}
