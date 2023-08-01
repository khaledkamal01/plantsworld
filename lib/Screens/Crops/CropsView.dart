import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Home/NavigationBar.dart';

import '../../Models/CropsModel.dart';

class CropsView extends StatelessWidget {
  final List<Crops> crops = [
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/wheat.png', name: 'قمح'),
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'assets/Images/person3.jpg', name: 'كوسا'),
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/wheat.png', name: 'قمح'),
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'assets/Images/person3.jpg', name: 'كوسا'),
  ];

  CropsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "ما هو محصولك؟",
              style: TextStyle(fontSize: 20, fontFamily: 'Fonts'),
            ),
            const Text(
              "بامكانك تحديد 8 محاصيل ",
              style: TextStyle(color: Colors.grey, fontFamily: 'Fonts'),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: crops.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  crossAxisSpacing: 1, // Spacing between columns
                  mainAxisSpacing: 2, // Spacing between rows
                  childAspectRatio: 1/1.2
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(

                      children: [
                        CircleAvatar(
                          backgroundImage:AssetImage(crops[index].image),
                          radius: 40,


                        ),
                        Text(
                          crops[index].name,
                          style: TextStyle(fontSize: 18, fontFamily: 'Fonts'),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0XFF218C03),
                    ),
                    height: MediaQuery.sizeOf(context).height/20,
                    width: MediaQuery.sizeOf(context).width/2,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Navigation()),
                        );
                      },
                      child: Text(
                        "التالي",
                        style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
