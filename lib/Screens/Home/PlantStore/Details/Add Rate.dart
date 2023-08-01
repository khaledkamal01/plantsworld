import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:plantsworld/Screens/Home/PlantStore/Details/Details.dart';

void DialogAddRate(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 35,
                ),
                Text(
                  "اكتب تقييمك",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 15),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 55,
                ),
                RatingBar.builder(
                  itemSize: 25,
                  initialRating: 1,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 35,
                ),
                Text(
                  "اكتب تقييمك",
                  style: TextStyle(fontFamily: 'Fonts', color: Colors.grey),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 55,
                ),
                Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: TextFormField(
                      maxLines: 3,
                    )),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 35,
                ),
                Text(
                  "ارفق صور المنتج",
                  style: TextStyle(
                      fontFamily: 'Fonts', fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 55,
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.attachment_outlined)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 35,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0XFF218C03),
                    ),
                    height: 50.0,
                    width: 250,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen()),
                        );
                      },
                      child: Text(
                        "ارسال",
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Fonts'),
                      ),
                    ))
              ],
            ),
          ),
        ),
      );
    },
  );
}
