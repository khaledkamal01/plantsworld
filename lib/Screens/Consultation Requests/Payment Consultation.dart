import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentConsultation extends StatefulWidget {
  PaymentConsultation({Key? key}) : super(key: key);

  @override
  State<PaymentConsultation> createState() => _PaymentCompleteState();
}

class _PaymentCompleteState extends State<PaymentConsultation>
    with SingleTickerProviderStateMixin {
  final _tabs = [
    Tab(
        child: Image.asset(
      "Assets/Images/orangelogo.png",
      width: 50,
      height: 50,
    )),
    Tab(
      child: Image(
        image: AssetImage("Assets/Images/Visa.png"),
      ),
    ),
  ];
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "شهر/",
                style: TextStyle(
                    fontFamily: 'Fonts', color: Colors.grey, fontSize: 20),
              ),
              Text(" 50.0 د.أ",
                  style: TextStyle(
                    fontFamily: 'Fonts',
                    fontSize: 20,
                    color: Color(0XFF218C03),
                  )),
              Text(" الباقة الشهرية",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 20)),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 50,
          ),
          TabBar(
            controller: _tabController,
            tabs: _tabs,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.green.withOpacity(0.2),
            ),
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [FirstTabContent(), SecondTabContent()]),
          )
        ]),
      ),
    );
  }
}

class FirstTabContent extends StatefulWidget {
  @override
  State<FirstTabContent> createState() => _FirstTabContentState();
}

class _FirstTabContentState extends State<FirstTabContent> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "رقم الجوال",
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
                "كلمة المرور",
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
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 60,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFF218C03),
                            borderRadius: BorderRadius.circular(20)),
                        height: 40.0,
                        width: 250,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "اتمام الدفع ",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Fonts'),
                          ),
                        )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Expanded(
                          child: Text(
                        "............................................................................................data",
                        overflow: TextOverflow.visible,
                      ))),
                  Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.orange,
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue!;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class SecondTabContent extends StatefulWidget {
  @override
  State<SecondTabContent> createState() => _SecondTabContentState();
}

class _SecondTabContentState extends State<SecondTabContent> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "اسم حامل البطاقة ",
                style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
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
                "رقم البطاقة",
                style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                  fillColor: Colors.grey[100],
                  filled: true,
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "CVC",
                    style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 4,
                  ),
                  Text(
                    "تاريخ الانتهاء",
                    style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 80,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFF218C03),
                            borderRadius: BorderRadius.circular(20)),
                        height: 40.0,
                        width: 250,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "اتمام الدفع ",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Fonts'),
                          ),
                        )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Expanded(
                          child: Text(
                        "............................................................................................data",
                        overflow: TextOverflow.visible,
                      ))),
                  Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.orange,
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue!;
                      });
                    },
                  ),
                ],
              )
            ],
          )),
    );
  }
}
