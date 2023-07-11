// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Models/HomeModel.dart';
import 'PlantStore/PlantStore.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<HomeModel> homeModel = [
    HomeModel(
        image: "Assets/Images/eggplant.png",
        title: "متجر نباتات",
        subtitle:
            " متجر لبيع كافة النباتات ,التوصيل فقط داخل المملكة الاردنية"),
    HomeModel(
        image: "Assets/Images/eggplant.png",
        title: "تشخيص صحي",
        subtitle: "قم بالتقاط عدة صور لنبتتك و خاصة للجزء المريض لنتمكن "),
    HomeModel(
        image: "Assets/Images/eggplant.png",
        title: "استشارة من خبراء",
        subtitle:
            " متجر لبيع كافة النباتات ,التوصيل فقط داخل المملكة الاردنية"),
    HomeModel(
        image: "Assets/Images/eggplant.png",
        title: "تنسيق الحدائق",
        subtitle:
            " متجر لبيع كافة النباتات ,التوصيل فقط داخل المملكة الاردنية"),
    HomeModel(
        image: "Assets/Images/eggplant.png",
        title: "ارشادات للعنايةبالنباتات",
        subtitle:
            " متجر لبيع كافة النباتات ,التوصيل فقط داخل المملكة الاردنية"),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'Assets/Icons/notification.png',
                    width: 25,
                    height: 25,
                  )
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'Assets/Icons/cart.png',
                      width: 25,
                      height: 25,
                    )),
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
                            fontFamily: 'Fonts'),
                      ),
                      Text(
                        'محمد كريم حمدان',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Fonts'),
                      ),
                    ],
                  ),
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("Assets/Images/eggplant.png"),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PlantStore()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, ),
                    child: Container(
                      height: 100,

                      decoration: BoxDecoration(color: Colors.grey.shade100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                homeModel[index].title,
                                style: TextStyle(
                                  fontFamily: 'Fonts',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF218C03)),
                              ),
                              Text(homeModel[index].subtitle,maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          CircleAvatar(
                              radius: 30,
                              child: Image(
                                  image: AssetImage(homeModel[index].image))),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: homeModel.length,
            ),
          )),
    );
  }
}
