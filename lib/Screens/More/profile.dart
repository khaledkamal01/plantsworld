import 'package:flutter/material.dart';
import 'package:plantsworld/Models/CropsInProfile.dart';

import 'More.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  final List<CropsInProfile> cropsinprofile = [
    CropsInProfile(image: "Assets/Images/eggplant.png"),
    CropsInProfile(image: "Assets/Images/red-tomatoes-branch@3x.png"),
    CropsInProfile(image: "Assets/Images/eggplant.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "الملف الشخصي",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leadingWidth: 160,
        leading: Row(

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
                  icon: Image.asset("Assets/Icons/cart.png")
              ),

            ]),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => More()),
                );
              },
              icon: Icon(
                Icons.navigate_next,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('Assets/Images/profile.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 55,
                        right: 50,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0XFFF2A007)),
                          child: Center(
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("اسم المستخدم",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("رقم الجوال",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("البريد الالكتروني",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("الرسالة",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  maxLines: 2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("المدينة",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("المنطقة",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("حجم المزرعة",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("محصولك",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Row(
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Expanded(
                      child: Container(
                        height: 140.0,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,

                          itemBuilder: (context, index) {
                             return Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          cropsinprofile[index].image))),
                               child: Icon(Icons.close,color: Colors.white,)
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10.0,
                          ),
                          itemCount: cropsinprofile.length,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFF218C03),
                          borderRadius: BorderRadius.circular(20)),
                      height: 40.0,
                      width: 250,
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "تغيير الموقع",
                          style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0XFF218C03),
                          borderRadius: BorderRadius.circular(20)),
                      height: 40.0,
                      width: 250,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => More()));
                        },
                        child: Text(
                          "حفظ",
                          style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
