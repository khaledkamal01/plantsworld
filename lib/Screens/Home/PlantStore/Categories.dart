import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Home/PlantStore/PlantStore.dart';
import 'package:plantsworld/Screens/PaymentSystem/Cart.dart';

import '../../Notifications Screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

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
            "التصنيفات",
            style: TextStyle(color: Colors.black, fontFamily: 'Fonts'),
          ),
        ),
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));

                },
                icon: Image.asset(
                  'Assets/Icons/notification.png',
                  width: 25,
                  height: 25,
                )),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlantStore()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      hintText: '',
                    ),
                  ),
                  Positioned(
                    right: 16.0,
                    child: Row(
                      children: [
                        Text(
                          '... بحث',
                          style:
                              TextStyle(color: Colors.grey, fontFamily: 'Fonts'),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("Assets/Images/plant1.png"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width/2.5,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/Images/plant1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width/2.5,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/Images/plant1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width/2.5,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/Images/plant1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width/2.5,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/Images/plant1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width/2.5,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/Images/plant1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width/2.5,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/Images/plant1.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
