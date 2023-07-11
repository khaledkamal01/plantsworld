import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Crops/CropsView.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  bool _isChecked = false;
  bool _isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "اهلا و سهلا بك",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: 'Fonts'),
              ),
              Text(
                "قم باكمال بياناتك لاتمام عملية التسجيل",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,fontFamily: 'Fonts'),
              ),
              // image
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Center(
                  child:Container(
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("Assets/Images/profile.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              Text("اسم المستخدم",style: TextStyle(fontFamily: 'Fonts'),),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                fillColor: Colors.grey[100],
                // Change the background color of the input field
                filled: true,
              )),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                                builder: (context, setNewStat) {
                              return AlertDialog(
                                titlePadding:
                                    EdgeInsets.symmetric(horizontal: 30),
                                actionsPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                title: Text(
                                  'سياسة الخصوصية و شروط الاستخدام',
                                  style: TextStyle(fontSize: 18,fontFamily: 'Fonts'),
                                ),
                                content: Text('khaled kamal',style: TextStyle(fontFamily: 'Fonts'),),
                                actions: <Widget>[
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text("اوافق على سياسة الخصوصية و",
                                                  style: TextStyle(
                                                      color: Colors.blue,fontFamily: 'Fonts')),
                                              Text(
                                                "شروط الاستخدام",
                                                style: TextStyle(
                                                    color: Colors.blue,fontFamily: 'Fonts',
                                                    decoration: TextDecoration
                                                        .underline,
                                                    decorationThickness: 2.0),
                                              ),
                                            ],
                                          ),
                                          Checkbox(
                                            activeColor: Colors.white,
                                            checkColor: Colors.orange,
                                            value: _isChecked1,
                                            onChanged: (bool? value) {
                                              setNewStat(() {
                                                _isChecked1 = value!;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 20),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              color: Color(0XFF218C03),
                                            ),
                                            height: 40.0,
                                            width: 220,
                                            child: MaterialButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Login1()),
                                                );
                                              },
                                              child: Text(
                                                "التالي",
                                                style: TextStyle(
                                                    color: Colors.white,fontFamily: 'Fonts'),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            });
                          },
                        );
                      },
                      child: Text(
                        "شروط الاستخدام",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.0),
                      )),
                  Text("اوافق على سياسة الخصوصية و",
                      style: TextStyle(color: Colors.blue,fontFamily: 'Fonts')),
                  Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.orange,
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
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
                          MaterialPageRoute(builder: (context) => CropsView()),
                        );
                      },
                      child: Text(
                        "التالي",
                        style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                      ),
                    )),
              )
            ]),
          ),
        ),
      )),
    );
  }
}
