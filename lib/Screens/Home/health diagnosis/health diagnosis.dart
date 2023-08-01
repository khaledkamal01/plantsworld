import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/More/subscriptoin.dart';

import '../../../Models/Health Diagnosis Model.dart';
import '../../Notifications Screen.dart';

class HealthDiagnosisScreen extends StatelessWidget {
  HealthDiagnosisScreen({Key? key}) : super(key: key);
  final List<HealthDiagnosis> healthDiagnosis = [
    HealthDiagnosis(
        count: 1,
        image: "Assets/Images/plant4.png",
        title: "التقاط صورة",
        subtitle:
            "قم بتركيز النبات في منتصف الاطار و تجنب الصور الداكنة او الضبابية"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "التشخيص الصحي ",
          style: TextStyle(color: Colors.black, fontFamily: 'Fonts'),
        ),
        centerTitle: true,
        leadingWidth: 120,
        leading: Row(children: [
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
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 5,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, index) {
                    return Stack(
                      children: [
                        // First Container
                        Container(
                          height: MediaQuery.sizeOf(context).height / 6,
                          width: MediaQuery.sizeOf(context).width / 1.2,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(
                                10), // Adding border radius
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          healthDiagnosis[index].title,
                                          style: const TextStyle(
                                            fontFamily: 'Fonts',
                                            color: Color(0XFF218C03),
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          healthDiagnosis[index].subtitle,
                                          style: const TextStyle(
                                            fontFamily: 'Fonts',
                                            overflow: TextOverflow.visible,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 30,
                                ),
                                Image.asset(
                                  healthDiagnosis[index].image,
                                  scale: 2,
                                )
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          top: -3,
                          left: -3,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width / 10,
                            height: MediaQuery.sizeOf(context).height / 10,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0XFFF2A007)),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                healthDiagnosis[index].count.toString(),
                                style:
                                    const TextStyle(color: Color(0XFFF2A007)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: MediaQuery.sizeOf(context).height / 20,
                    );
                  },
                  itemCount: healthDiagnosis.length,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFF218C03),
                            borderRadius: BorderRadius.circular(20)),
                        height: 40.0,
                        width: 250,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Subscription()));
                          },
                          child: Text(
                            "تعرف على النبات ",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Fonts'),
                          ),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
