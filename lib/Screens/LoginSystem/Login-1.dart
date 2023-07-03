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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "قم باكمال بياناتك لاتمام عملية التسجيل",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              // image
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(""),
                    radius: 50,
                  ),
                ),
              ),

              Text("اسم المستخدم"),
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
                                    EdgeInsets.symmetric(horizontal: 20),
                                title: Text(
                                  'سياسة الخصوصية و شروط الاستخدام',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text('khaled kamal'),
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
                                                      color: Colors.blue)),
                                              Text(
                                                "شروط الاستخدام",
                                                style: TextStyle(
                                                    color: Colors.blue,
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
                                      TextButton(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              color: Colors.green,
                                            ),
                                            height: 50.0,
                                            width: 250,
                                            child: MaterialButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CropsView()),
                                                );
                                              },
                                              child: Text(
                                                "التالي",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
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
                      style: TextStyle(color: Colors.blue)),
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
                      color: Colors.green,
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
                        style: TextStyle(color: Colors.white),
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
