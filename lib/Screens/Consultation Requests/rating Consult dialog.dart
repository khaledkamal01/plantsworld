import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingConsultDialog extends StatelessWidget {
  const RatingConsultDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: MediaQuery.sizeOf(context).height / 10,
        width: MediaQuery.sizeOf(context).width / 4,
        child: MaterialButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: AlertDialog(
                    title: Icon(Icons.close),
                    titlePadding: EdgeInsets.only(left: 250, top: 20),
                    content: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "قيم الاستشارة",
                              style: TextStyle(fontFamily: 'Fonts'),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height / 50,
                            ),
                            RatingBar.builder(
                              itemSize: 28,
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
                              height: MediaQuery.sizeOf(context).height / 50,
                            ),
                            Text(
                              "اكتب تقييمك",
                              style: TextStyle(
                                  fontFamily: 'Fonts',
                                  color: Colors.grey.shade500),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height / 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: TextField(
                                maxLines: 5,
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
                            Center(
                              child:  Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Center(
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0XFF218C03),
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      height: 40.0,
                                      width: 250,
                                      child: MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "ارسال ",
                                          style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                                        ),
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
