import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../Models/RatingProduct.dart';

class Reviews extends StatelessWidget {
   Reviews({Key? key}) : super(key: key);
  final List<RatingProduct> ratingproduct = [
    RatingProduct(
      image: "Assets/Images/profile.png",
      name: "شام مقدري",
      rating: 5,
      date: "18 jan 2018",
      comment:
      "  هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل",
    ),
    RatingProduct(
      image: "Assets/Images/profile.png",
      name: "شام مقدري",
      rating: 5,
      date: "18 jan 2018",
      comment:
      "  هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل",
    ),
    RatingProduct(
      image: "Assets/Images/profile.png",
      name: "شام مقدري",
      rating: 5,
      date: "18 jan 2018",
      comment:
      "  هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل هناك حقيقة مثبته منذ زمن طويل",
    ),
  ];
   final List<ImageInRating> imageInRating = [
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
     ImageInRating(image: "Assets/Images/plant3.png"),
   ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 5,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40),
                        child: Text(
                          ratingproduct[index].date,
                          style: TextStyle(
                              fontFamily: 'Fonts',
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.end,
                          children: [
                            Text(
                              ratingproduct[index].name,
                              style:
                              TextStyle(fontFamily: 'Fonts'),
                            ),
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(
                                  horizontal: 0.0),
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
                      Container(
                        width:
                        MediaQuery.sizeOf(context).width / 7,
                        height:
                        MediaQuery.sizeOf(context).width / 7,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                ratingproduct[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      ratingproduct[index].comment,
                      style: TextStyle(
                          fontFamily: 'Fonts',
                          color: Colors.grey.shade700,
                          overflow: TextOverflow.visible),
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      height:
                      MediaQuery.sizeOf(context).height / 8,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder:
                              (BuildContext context, index) {
                            return Image(
                              image: AssetImage(
                                  imageInRating[index].image),
                              width: MediaQuery.sizeOf(context)
                                  .width /
                                  9,
                              height: MediaQuery.sizeOf(context)
                                  .height /
                                  9,
                            );
                          },
                          separatorBuilder:
                              (BuildContext context, index) {
                            return SizedBox(
                              width: 5,
                            );
                          },
                          itemCount: imageInRating.length),
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
            indent: 20,
            endIndent: 20,
          ),
          itemCount: ratingproduct.length),
    );
  }
}
