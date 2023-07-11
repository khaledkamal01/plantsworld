import 'package:intl/intl.dart' as intl;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Login-1.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  bool timeMinuteEnd =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "رمز التحقق",
          style: TextStyle(color: Colors.black,fontFamily: 'Fonts'),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
               child: Image.asset("Assets/Images/message.png")
              ),
            ),
            Text(
              "يرجى التحقق من بريدك الالكتروني و ادخال الرمز هنا",
              style: TextStyle(fontSize: 18,fontFamily: 'Fonts'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    )),
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    )),
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    )),
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    )),
                    style: Theme.of(context).textTheme.headlineMedium,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
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
                      MaterialPageRoute(builder: (context) => Login1()),
                    );
                  },
                  child: Text(
                    "التالي",
                    style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                  ),
                )),
            SizedBox(height: 30,),
            TweenAnimationBuilder<Duration>(
                duration: const Duration(seconds: 60),
                tween: Tween(
                    begin: const Duration(seconds: 60),
                    end: Duration.zero),
                onEnd: () {
                  setState(() {
                    timeMinuteEnd = true;
                  });
                },
                builder: (BuildContext context,
                    Duration value, Widget? child) {
                  var f = intl.NumberFormat("00");
                  final seconds =
                  f.format(value.inSeconds % 60);
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("00:", style:TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                          Text(seconds,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ));
                }),

            Text("لم استلم الكود؟",style: TextStyle(fontFamily: 'Fonts'),),
            TextButton(
              onPressed: () {},
              child: Text(
                "اعادة ارسال",
                style: TextStyle(color: Color(0XFFF2A007),fontFamily: 'Fonts',decoration:
                    TextDecoration.underline ,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
