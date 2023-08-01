import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Notifications%20Screen.dart';
import 'package:plantsworld/Screens/PaymentSystem/Cart.dart';

import 'PaymentComplete.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentMethod> {
  int? selectedValue = 0;

  void _handleRadioValueChanged(int? value) {
    setState(() {
      selectedValue = value;
    });
  }

  void _handleNextButton() {
    if (selectedValue == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FirstTabContent()),
      );
    } else if (selectedValue == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondTabContent()),
      );
    }
    // You can add more conditions for additional radio buttons and classes if needed.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                icon: Image.asset(
                  'Assets/Icons/cart.png',
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 6,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                "البيت",
                                style: TextStyle(
                                    overflow: TextOverflow.visible,
                                    fontSize: 16,
                                    fontFamily: 'Fonts',
                                    color: Colors.grey),
                              )),
                          Text(
                            "العنوان شارع ياسر ابو قطيش عمارة 6",
                            overflow: TextOverflow.visible,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Fonts',
                            ),
                          ),
                          Text(
                            "0792964260",
                            overflow: TextOverflow.visible,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Fonts',
                            ),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage("Assets/Images/plant.png"),
                        width: MediaQuery.sizeOf(context).width / 3.6,
                        height: MediaQuery.sizeOf(context).height / 7,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                child: Text(
                  "طرق الدفع",
                  style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Radio(
                          value: 1,
                          groupValue: selectedValue,
                          activeColor: Color(0XFFF2A007),
                          onChanged: _handleRadioValueChanged),
                    ),
                    Text(
                      "فيزا",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                    ),
                    Image.asset("Assets/Images/Visa.png")
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 30,
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Radio(
                        value: 2,
                        groupValue: selectedValue,
                        activeColor: Color(0XFFF2A007),
                        onChanged: _handleRadioValueChanged),
                    Text(
                      "محفظة اورانج",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                    ),
                    Image.asset(
                      "Assets/Images/orangelogo.png",
                      width: MediaQuery.sizeOf(context).width * 0.2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 30,
              ),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Radio(
                        value: 3,
                        groupValue: selectedValue,
                        activeColor: Color(0XFFF2A007),
                        onChanged: _handleRadioValueChanged),
                    Text(
                      "الدفع عند الاستلام",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                    ),
                    Image.asset("Assets/Images/cash.png"),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 30,
              ),
              TextFormField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                    hintText: 'ادخل رمز الكوبون',
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width / 4,
                        height: MediaQuery.sizeOf(context).height / 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFF218C03)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "تطبيق",
                            style: TextStyle(
                                fontFamily: 'Fonts', color: Colors.white),
                          ),
                        ),
                      ),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ر.س",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                      ),
                      Text("120",
                          style: TextStyle(fontFamily: 'Fonts', fontSize: 20)),
                    ],
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade300,
                      height: 25,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text("المجموع",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ر.س",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                      ),
                      Text("120",
                          style: TextStyle(fontFamily: 'Fonts', fontSize: 20)),
                    ],
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade300,
                      height: 25,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text("الشحن",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ر.س",
                        style: TextStyle(fontFamily: 'Fonts', fontSize: 20),
                      ),
                      Text("120",
                          style: TextStyle(fontFamily: 'Fonts', fontSize: 20)),
                    ],
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade300,
                      height: 25,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text("الخصم",
                      style: TextStyle(fontFamily: 'Fonts', fontSize: 20))
                ],
              ),
              Container(
                color: Colors.grey.shade300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ر.س",
                          style: TextStyle(
                              fontFamily: 'Fonts',
                              fontSize: 20,
                              color: Color(0XFF218C03)),
                        ),
                        Text("130",
                            style: TextStyle(
                                fontFamily: 'Fonts',
                                fontSize: 20,
                                color: Color(0XFF218C03))),
                      ],
                    ),
                    Text("المجموع الكلي",
                        style: TextStyle(
                            fontFamily: 'Fonts',
                            fontSize: 20,
                            color: Color(0XFF218C03)))
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 10,
              ),
              Center(
                child: Container(
                  height: MediaQuery.sizeOf(context).height / 14,
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  decoration: BoxDecoration(
                    color: Color(0XFF218C03),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: MaterialButton(
                    onPressed: _handleNextButton,
                    child: Text(
                      "التالي",
                      style: TextStyle(
                          fontFamily: 'Fonts',
                          color: Colors.white,
                          fontSize: 20),
                    ),
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
