import 'package:flutter/material.dart';

import '../../Models/Tips an plant care Model.dart';
import '../Notifications Screen.dart';
import '../PaymentSystem/Cart.dart';

class TipsAndPlantCareScreen extends StatelessWidget {
  TipsAndPlantCareScreen({Key? key}) : super(key: key);
  final List<TipsAndPlantCare> tipsandplantcare = [
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
    TipsAndPlantCare(
        image: "Assets/Images/plant5.png", name: "نباتات الياسمين"),
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
            "الارشادات",
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
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: tipsandplantcare.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TipsAndPlantCareScreen()),
                        );
                        break;
                      case 1:
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Screen2()),
                        // );
                        break;
                    }
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 7,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            tipsandplantcare[index].name,
                            style: TextStyle(
                                fontFamily: 'Fonts',
                                fontSize: 20,
                                color: Color(0XFF012603)),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 20,
                          ),
                          Image(
                              image: AssetImage(tipsandplantcare[index].image))
                        ],
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}
