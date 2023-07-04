// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Models/HomeModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<HomeModel> homeModel = [
    HomeModel(image: "image", title: "title", subtitle: "subtitle"),
    HomeModel(image: "image", title: "title", subtitle: "subtitle"),
    HomeModel(image: "image", title: "title", subtitle: "subtitle"),
    HomeModel(image: "image", title: "title", subtitle: "subtitle"),
    HomeModel(image: "image", title: "title", subtitle: "subtitle"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_rounded,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'اهلا و سهلا بك',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'محمد كريم حمدان',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(''),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  homeModel[index].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                                Text(homeModel[index].subtitle),
                              ],
                            ),
                          ),
                          CircleAvatar(
                              radius: 30,
                              child:
                                  Image(image: AssetImage(homeModel[index].image))),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: homeModel.length,
          ),
        ));
  }
}
