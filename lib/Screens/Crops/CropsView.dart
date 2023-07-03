import 'package:flutter/material.dart';

import '../../Models/CropsModel.dart';
import '../LoginSystem/Login-1.dart';

class CropsView extends StatelessWidget {
  final List<Crops> crops = [
    Crops(image: 'assets/person1.jpg', name: 'ahmad'),
    Crops(image: 'assets/person2.jpg', name: 'Jane'),
    Crops(image: 'assets/person3.jpg', name: 'amr'),
    Crops(image: 'assets/person1.jpg', name: 'khaled'),
    Crops(image: 'assets/person2.jpg', name: 'khalil'),
    Crops(image: 'assets/person3.jpg', name: '..'),
    Crops(image: 'assets/person1.jpg', name: 'll'),
    Crops(image: 'assets/person2.jpg', name: 'rami'),
    Crops(image: 'assets/person3.jpg', name: 'alaa'),
    Crops(image: 'assets/person1.jpg', name: 'ahmad'),
    Crops(image: 'assets/person2.jpg', name: 'Jane'),
    Crops(image: 'assets/person3.jpg', name: 'amr'),
    Crops(image: 'assets/person1.jpg', name: 'khaled'),
    Crops(image: 'assets/person1.jpg', name: 'ahmad'),
    Crops(image: 'assets/person2.jpg', name: 'Jane'),
    Crops(image: 'assets/person3.jpg', name: 'amr'),
    Crops(image: 'assets/person1.jpg', name: 'khaled'),
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
            const Text("ما هو محصولك؟",style: TextStyle(fontSize: 20),),
            const Text("بامكانك تحديد 8 محاصيل ",style: TextStyle(color: Colors.grey),),
            Expanded(
              child: GridView.builder(
                itemCount: crops.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  crossAxisSpacing: 1, // Spacing between columns
                  mainAxisSpacing: 1, // Spacing between rows
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(crops[index].image),
                          radius: 40,
                        ),
                        Text(crops[index].name)
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
                    color: Colors.green,
                  ),
                  height: 50.0,
                  width: 250,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>   Login1()),
                      );
                    },
                    child: Text(
                      "التالي",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
