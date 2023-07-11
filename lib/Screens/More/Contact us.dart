import 'package:flutter/material.dart';

import 'More.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "تواصل معنا",
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("اسم المستخدم",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("رقم الجوال",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("نوع الرسالة",style: TextStyle(fontFamily: 'Fonts'),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("الرسالة",style: TextStyle(fontFamily: 'Fonts'),),
                ],
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
                          onPressed: () {},
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
    );
  }
}
