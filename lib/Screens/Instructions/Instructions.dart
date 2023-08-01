import 'package:flutter/material.dart';

import '../../Models/InstructionsModel.dart';
import '../Notifications Screen.dart';
import '../PaymentSystem/Cart.dart';
import 'Tips and plant care.dart';

class InstructionsScreen extends StatelessWidget {
  InstructionsScreen({Key? key}) : super(key: key);
  final List<Instruction> instruction = [
    Instruction(
        image: "Assets/Images/plant4.png",
        title: "نصائح و رعاية النباتات",
        subtitle:
            "العثور على نصائح للحفاظ على النباتات الخاصة بك على قيد الحياة"),
    Instruction(
        image: "Assets/Images/plant4.png",
        title: "امراض تصيب النباتات",
        subtitle:
            "العثور على نصائح للحفاظ على النباتات الخاصة بك على قيد الحياة"),
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
        itemCount: instruction.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
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
                height: MediaQuery.sizeOf(context).height / 6,
                color: Colors.grey.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                instruction[index].title,
                                // maxLines: null,
                                //softWrap: true,
                                style: TextStyle(
                                  overflow: TextOverflow.visible,
                                  fontSize: 16,
                                  fontFamily: 'Fonts',
                                  color: Color(0XFF218C03),
                                ),
                              ),
                              Text(
                                instruction[index].subtitle,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Fonts',
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Image(
                        image: AssetImage(instruction[index].image),
                        width: MediaQuery.sizeOf(context).width / 3.9,
                        height: MediaQuery.sizeOf(context).height / 8,
                      ),
                    ],
                  ),
                ),
              ),
            )),
          );
        },
      ),
    );
  }
}
