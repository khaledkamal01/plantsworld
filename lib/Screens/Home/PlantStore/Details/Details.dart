import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:plantsworld/Screens/Home/PlantStore/Details/FixedPart.dart';

import '../../../../Models/CategoriesModel.dart';
import '../../../../Models/FavoritesModel.dart';
import '../../../../Models/ProductFeaturesModel.dart';
import '../../../../Models/ProductSizeModel.dart';
import '../../../../Models/RatingProduct.dart';
import 'Add Rate.dart';
import 'DescribtionOfPlant.dart';
import 'ListOfRelated.dart';
import 'Reviews.dart';
import 'imageproduct.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}
class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ImageInDetails(),
                  DescriptionOfPlant(),
                  ListOfRelated(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "المراجعات",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                    ),
                  ),
                  Reviews(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 80),
                    child: Center(
                      child: Container(
                        height: MediaQuery.sizeOf(context).height / 20,
                        width: MediaQuery.sizeOf(context).width / 1.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFF218C03)),
                        child: MaterialButton(
                          onPressed: () {
                            DialogAddRate(context);
                          },
                          child: Text(
                            "اضافة تقييم",
                            style: TextStyle(
                                fontFamily: 'Fonts', color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            FixedPart()
          ],
        ),
      ),
    );
  }
}
