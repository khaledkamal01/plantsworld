import 'package:flutter/material.dart';

class SentDone extends StatelessWidget {
  const SentDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("Assets/Images/OrderPlaced.png"),
              width: MediaQuery.sizeOf(context).width / 3,
            ),
            Text("تم ارسال طلبك بنجاح",
                style: TextStyle(fontSize: 25, fontFamily: 'Fonts')),
            SizedBox(height: MediaQuery.sizeOf(context).height/20,),
            Text("سيتم التواصل معك في اقرب وقت",
                style: TextStyle(
                    fontSize: 20, fontFamily: 'Fonts', color: Colors.grey)),

            SizedBox(height: MediaQuery.sizeOf(context).height/20,),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0XFF218C03),
                  ),
                  height: MediaQuery.sizeOf(context).height/20,
                  width: MediaQuery.sizeOf(context).width/2,
                  child: MaterialButton(
                    onPressed: () {

                    },
                    child: Text(
                      "اغلاق",
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
