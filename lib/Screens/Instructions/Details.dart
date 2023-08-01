import 'package:flutter/material.dart';
import 'package:plantsworld/Models/Tips%20And%20plant%20care%20details%20Model.dart';

import '../../Models/FavoritesModel.dart';
import '../../Models/ProductFeaturesModel.dart';
import '../Home/PlantStore/Details/ListOfRelated.dart';

class DetailsInstructionsScreen extends StatefulWidget {
  const DetailsInstructionsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsInstructionsScreen> createState() =>
      _DetailsInstructionsScreenState();
}

class _DetailsInstructionsScreenState extends State<DetailsInstructionsScreen> {
  final List<TipsAndPlantCareDetails> tipsandplantcaredetails = [
    TipsAndPlantCareDetails(
      image: "Assets/Images/plant5.png",
      title1: "ازهار الياسمين",
      description1:
          "الياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرة ",
      title2: "كيفية زراعة الياسمين",
      description2:
          "الياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرة ",
      title3: "العناية بازهار الياسمين",
      description3:
          "الياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرةالياسمين جنس نباتي يضم نحو مئتي نوع من الشجيرات المزهرة ",
    ),
  ];
  final List<ProductFeatures> productfeatures = [
    ProductFeatures(
        image: "Assets/Images/الري.png",
        title: "الري",
        subtitle: "لا يتم ريها الا بعد جفاف التربة"),
    ProductFeatures(
        image: "Assets/Images/الري.png",
        title: "الري",
        subtitle: "لا يتم ريها الا بعد جفاف التربة"),
    ProductFeatures(
        image: "Assets/Images/الري.png",
        title: "الري",
        subtitle: "لا يتم ريها الا بعد جفاف التربة"),
  ];
  final List<Favorites> favorites = [
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
  ];

  bool isIcon1Selected = false;

  void toggleIcon() {
    setState(() {
      isIcon1Selected = !isIcon1Selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: tipsandplantcaredetails.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(tipsandplantcaredetails[index].image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                        ),
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tipsandplantcaredetails[index].title1,
                                  style: const TextStyle(
                                      fontSize: 25, fontFamily: 'Fonts'),
                                ),
                                Text(
                                  tipsandplantcaredetails[index].description1,
                                  style: TextStyle(
                                      fontFamily: 'Fonts',
                                      color: Colors.grey.shade600),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                ),
                                Text(
                                  tipsandplantcaredetails[index].title2,
                                  style: const TextStyle(
                                      fontSize: 25, fontFamily: 'Fonts'),
                                ),
                                Text(
                                  tipsandplantcaredetails[index].description2,
                                  style: TextStyle(
                                      fontFamily: 'Fonts',
                                      color: Colors.grey.shade600),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                ),
                                Text(
                                  tipsandplantcaredetails[index].title3,
                                  style: const TextStyle(
                                      fontSize: 25, fontFamily: 'Fonts'),
                                ),
                                Text(
                                  tipsandplantcaredetails[index].description3,
                                  style: TextStyle(
                                      fontFamily: 'Fonts',
                                      color: Colors.grey.shade600),
                                ),
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: 10,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        productfeatures[index]
                                                            .title,
                                                        style: const TextStyle(
                                                            fontFamily: 'Fonts',
                                                            fontSize: 18),
                                                      ),
                                                      Text(
                                                          productfeatures[index]
                                                              .subtitle,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Fonts',
                                                              fontSize: 15,
                                                              color: Colors.grey
                                                                  .shade600)),
                                                    ],
                                                  ),
                                                ),
                                                const CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  backgroundImage: AssetImage(
                                                    "Assets/Images/الري.png",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: productfeatures.length,
                                    ),
                                  ),
                                ),
                                const Text("منتجات قد تحتاجها للعناية"),
                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height / 50,
                                ),
                                ListOfRelated(),
                                SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height / 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
