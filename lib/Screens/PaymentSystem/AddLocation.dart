import 'package:flutter/material.dart';

import '../Notifications Screen.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "اضافة عنوان",
            style: TextStyle(color: Colors.black, fontFamily: 'Fonts'),
          ),
        ),
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
          ],
        ),
        leadingWidth: MediaQuery.sizeOf(context).width / 4,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "المدينة",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                  )),
                ),
                Text(
                  "المنطقة",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                  )),
                ),
                Text(
                  "الشارع",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextFormField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                  )),
                ),
                Text(
                  "العنوان",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextFormField(
                    maxLines: 5,
                      decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                  )),
                ),
                Center(
                  child:  Padding(
                    padding: const EdgeInsets.only(top: 20),
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
      ),
    );
  }
}
