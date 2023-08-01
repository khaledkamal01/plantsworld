import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Camera/Camera%20Screen.dart';

import '../../../Models/CropsModel.dart';
import 'health diagnosis.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<SubscriptionScreen> {
  final List<Crops> crops = [
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HealthDiagnosisScreen()),
                );
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: const Text(
                "ما هو المحصول الذي تريد طلب تشخيص له؟",
                style: TextStyle(
                    fontFamily: 'Fonts',
                    fontSize: 23,
                    color: Color(0XFF012603)),
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height/15,),
            Expanded(
              child: GridView.builder(
                itemCount: crops.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // Number of columns in the grid
                        crossAxisSpacing: 1, // Spacing between columns
                        mainAxisSpacing: 2, // Spacing between rows
                        childAspectRatio: 1 / 1.2),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap:(){},
                          child: CircleAvatar(
                            backgroundImage: AssetImage(crops[index].image),
                            radius: 40,
                          ),
                        ),
                        Text(
                          crops[index].name,
                          style:
                              TextStyle(fontSize: 18, fontFamily: 'Fonts'),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0XFF218C03),
                  ),
                  height: MediaQuery.sizeOf(context).height / 20,
                  width: MediaQuery.sizeOf(context).width / 2,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CameraScreen()),
                      );
                    },
                    child: Text(
                      "التالي",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Fonts'),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
