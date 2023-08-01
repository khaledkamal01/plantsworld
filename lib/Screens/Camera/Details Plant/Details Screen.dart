import 'package:flutter/material.dart';

import '../../../Models/DetailsScanModel.dart';
import '../../Home/PlantStore/Details/ListOfRelated.dart';
import '../../Notifications Screen.dart';
import '../../PaymentSystem/Cart.dart';
import '../Scaning Picture/Scaning Picture Screen.dart';

class DetailsScannerScreen extends StatefulWidget {
  const DetailsScannerScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScannerScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScannerScreen> {
  final List<DiseaseDetails> diseaseDetails = [
    DiseaseDetails(
        image: "Assets/Images/plant5.png",
        description: "يمكن لذلك الفطر التاثير",
        status: [
          Status(
              status: "status",
              images: ["Assets/Images/plant3.png", "Assets/Images/plant3.png"])
        ],
        treatment: [
          Treatment(
              image: "Assets/Images/plant3.png",
              name: "اسم العلاج",
              price: 50.0)
        ],
        name: 'تعفن الاوراق'),
    DiseaseDetails(
        image: "Assets/Images/plant5.png",
        description: "يمكن لذلك الفطر التاثير",
        status: [
          Status(
              status: "status",
              images: ["Assets/Images/plant3.png", "Assets/Images/plant3.png"])
        ],
        treatment: [
          Treatment(
              image: "Assets/Images/plant3.png",
              name: "اسم العلاج",
              price: 50.0)
        ],
        name: 'تعفن الاوراق'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScaningPictureScreen()));
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
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Image(
              image: AssetImage("Assets/Images/back.png"),
              width: MediaQuery.sizeOf(context).width,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "تعفن الاوراق",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "80%",
                            style: TextStyle(
                                fontFamily: 'Fonts',
                                color: Color(0XFF218C03),
                                fontSize: 20),
                          ),
                          Text(
                            "تم التعرف عل النبات",
                            style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الحالة الصحية",
                            style: TextStyle(
                                fontFamily: 'Fonts', color: Color(0XFFF2A007)),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 50,
                          ),
                          Image(
                            image: AssetImage("Assets/Images/Status.png"),
                            width: MediaQuery.sizeOf(context).width / 15,
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Text(
                        "تعفن الاوراق",
                        style: TextStyle(fontFamily: 'Fonts'),
                      ),
                      Text(
                        "اوراق تشير الى ان النبات مصاب بالعفن",
                        style: TextStyle(fontFamily: 'Fonts'),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height / 10,
                        width: MediaQuery.sizeOf(context).width,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index) {
                              return Image(
                                  image:
                                      AssetImage("Assets/Images/plant3.png"));
                            },
                            separatorBuilder: (BuildContext context, index) {
                              return SizedBox(
                                width: MediaQuery.sizeOf(context).width / 20,
                              );
                            },
                            itemCount: 4),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Text(
                        "هل توافق على نتيجة الفحص التلقائي؟",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).height / 20,
                            width: MediaQuery.sizeOf(context).width / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Color(0XFFF2A007))),
                            child: Center(
                              child: Text(
                                "لا",
                                style: TextStyle(
                                    fontFamily: 'Fonts',
                                    color: Color(0XFFF2A007),
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 50,
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height / 20,
                            width: MediaQuery.sizeOf(context).width / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0XFFF2A007)),
                            child: Center(
                              child: Text(
                                "نعم",
                                style: TextStyle(
                                    fontFamily: 'Fonts',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "وصف المرض",
                            style: TextStyle(
                                fontFamily: 'Fonts', color: Color(0XFFF2A007)),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 50,
                          ),
                          Image(
                              image: AssetImage("Assets/Icons/وصف المرض.png")),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Text("...يمكن لذلك الفطر التاثير على جميع انواع الخس"),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "العلاج",
                            style: TextStyle(
                                fontFamily: 'Fonts', color: Color(0XFFF2A007)),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width / 50,
                          ),
                          Image(
                            image: AssetImage("Assets/Icons/treat.png"),
                            width: MediaQuery.sizeOf(context).width / 15,
                          )
                        ],
                      ),
                      ListOfRelated(),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
