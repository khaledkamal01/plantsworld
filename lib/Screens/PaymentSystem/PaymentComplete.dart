import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentComplete extends StatefulWidget {
  PaymentComplete({Key? key}) : super(key: key);

  @override
  State<PaymentComplete> createState() => _PaymentCompleteState();
}

class _PaymentCompleteState extends State<PaymentComplete>
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
  bool _switchValue1 = true;
  bool _switchValue2 = true;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "حفظ البطاقة من اجل المشتريات المستقبلية",
                    style: TextStyle(fontFamily: 'Fonts', fontSize: 15),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.04,
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  Transform.scale(
                    scale: 1,
                    child: CupertinoSwitch(
                      activeColor: Color(0XFF218C03),
                      value: _switchValue1,
                      onChanged: (value) {
                        setState(() {
                          _switchValue1 = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "تعيين كطريقة دفع افتراضية",
                    style: TextStyle(fontFamily: 'Fonts', fontSize: 15),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.04,
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  CupertinoSwitch(
                    activeColor: Color(0XFF218C03),
                    value: _switchValue2,
                    onChanged: (value) {
                      setState(() {
                        _switchValue2 = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 40,
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
  bool _switchValue1 = true;
  bool _switchValue2 = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "اسم حامل البطاقة ",
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
                "رقم البطاقة",
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
                  SizedBox(width: 10,),
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "حفظ البطاقة من اجل المشتريات المستقبلية",
                    style: TextStyle(fontFamily: 'Fonts', fontSize: 15),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.04,
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  CupertinoSwitch(
                    activeColor: Color(0XFF218C03),
                    value: _switchValue1,
                    onChanged: (value) {
                      setState(() {
                        _switchValue1 = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "تعيين كطريقة دفع افتراضية",
                    style: TextStyle(fontFamily: 'Fonts', fontSize: 15),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.04,
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  CupertinoSwitch(
                    activeColor: Color(0XFF218C03),
                    value: _switchValue2,
                    onChanged: (value) {
                      setState(() {
                        _switchValue2 = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20,),
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

            ],
          )),
    );
  }
}
