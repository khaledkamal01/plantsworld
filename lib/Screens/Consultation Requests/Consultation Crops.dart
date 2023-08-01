import 'package:flutter/material.dart';

import '../../Models/CropsModel.dart';

class ConsultationCrops extends StatefulWidget {
  const ConsultationCrops({Key? key}) : super(key: key);

  @override
  State<ConsultationCrops> createState() => _ConsultationCropsState();
}

class _ConsultationCropsState extends State<ConsultationCrops> {
  final List<Crops> crops = [
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/red-tomatoes-branch@3x.png', name: 'بندورة'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
    Crops(image: 'Assets/Images/eggplant.png', name: 'باذنجان'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon:Icon(
            Icons.navigate_next,
            color: Colors.black), onPressed: () {  },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "ما هو المحصول الذي تريد طلب استشارة له؟",
                style: TextStyle(
                    fontFamily: 'Fonts',
                    fontSize: 23,
                    color: Color(0XFF012603)),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 15,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: crops.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // Number of columns in the grid
                    crossAxisSpacing: 1, // Spacing between columns
                    mainAxisSpacing: 2, // Spacing between rows
                    childAspectRatio: 1 / 1.5),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundImage: AssetImage(crops[index].image),
                            radius: 40,
                          ),
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
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: CircleAvatar(child: Icon(Icons.close),),
                            titlePadding: EdgeInsets.only(right: 250),
                            content: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "تعليمات عامة حول طلب استشارة",
                                      style: TextStyle(fontFamily: 'Fonts'),
                                    ),
                                    SizedBox(height: MediaQuery.sizeOf(context).height/30,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "قم بكتابة مشكلتك بالتفصيل",
                                          style: TextStyle(fontFamily: 'Fonts'),
                                        ),
                                        SizedBox(width: MediaQuery.sizeOf(context).width/50,),
                                        CircleAvatar(
                                            radius: 20,
                                            child: Image(
                                              image: AssetImage(
                                                  "Assets/Icons/d1.png"),
                                            ))
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.sizeOf(context).height/30,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "قم باضافة صور توضح مشكلتك",
                                          style: TextStyle(fontFamily: 'Fonts'),
                                        ),
                                        SizedBox(width: MediaQuery.sizeOf(context).width/50,),
                                        CircleAvatar(
                                            radius: 20,
                                            child: Image(
                                              image: AssetImage(
                                                  "Assets/Icons/d2.png"),
                                            ))
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.sizeOf(context).height/30,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Text(
                                              overflow: TextOverflow.visible,
                                              "سيقوم احد خبرائنا بالتواصل معك في اقرب وقت",
                                              style: TextStyle(fontFamily: 'Fonts',),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: MediaQuery.sizeOf(context).width/50,),
                                        CircleAvatar(
                                            radius: 20,
                                            child: Image(
                                              image: AssetImage(
                                                  "Assets/Icons/d3.png"),
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "التالي",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Fonts'),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
