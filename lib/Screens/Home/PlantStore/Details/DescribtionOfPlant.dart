import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../Models/ProductFeaturesModel.dart';
import '../../../../Models/ProductSizeModel.dart';

class DescriptionOfPlant extends StatelessWidget {
   DescriptionOfPlant({Key? key}) : super(key: key);
  final List<ProductSize> productsize = [
    ProductSize(Size: "كبير"),
    ProductSize(Size: "وسط"),
    ProductSize(Size: "صغير")
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "نبتة زاميا طويلة السيقان في حوض اسمنتينبتة زاميا طويلة السيقان في حوض اسمنتي",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Fonts',
                    overflow: TextOverflow.visible),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "(120  تقييما )",
                    style:
                    TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    itemPadding:
                    EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  " ر.س",
                  style: TextStyle(color: Color(0XFF218C03)),
                ),
                Text(
                  " 40.0",
                  style: TextStyle(color: Color(0XFF218C03)),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 7,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height / 6,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5),
                            child: Container(
                              height:
                              MediaQuery.sizeOf(context).height /
                                  8,
                              width:
                              MediaQuery.sizeOf(context).width /
                                  8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                    productsize[index].Size,
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            ),
                          ),
                        );
                      },
                      itemCount: productsize.length),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "الحجم",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                )
              ],
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "في حوض زاميا اسمنتي تعتبر من النباتات القوية التي تتميز باوراق داكنه خضراءفي حوض زاميا اسمنتي تعتبر من النباتات القوية التي تتميز باوراق داكنه خضراء في حوض زاميا اسمنتي تعتبر من النباتات القوية التي تتميز باوراق داكنه خضراء  ",
                style: TextStyle(
                    fontFamily: 'Fonts', color: Colors.grey.shade700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "  ارتفاع حجم النبته مع الحوض 85 سم    ",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'Fonts'),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 35,
                    width: MediaQuery.sizeOf(context).width / 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFF218C03)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "   عرض الحوض 25 سم   ",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'Fonts'),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 35,
                    width: MediaQuery.sizeOf(context).width / 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFF218C03)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: MediaQuery.sizeOf(context).height / 3.5,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(productfeatures[index].title,style: TextStyle(fontFamily: 'Fonts',fontSize:20),),
                                      Text(
                                        productfeatures[index].subtitle,
                                        style:
                                        TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                    backgroundColor: Colors.white,

                                    backgroundImage: AssetImage("Assets/Images/الري.png")
                                )
                              ],
                            )),
                      );
                    },
                    itemCount: productfeatures.length),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "عرض الكل",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Fonts'),
                      )),
                  Text(
                    "ذات صلة",
                    style: TextStyle(
                      fontFamily: 'Fonts',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
