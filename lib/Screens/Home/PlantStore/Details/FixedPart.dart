import 'package:flutter/material.dart';

class FixedPart extends StatefulWidget {
  const FixedPart({Key? key}) : super(key: key);

  @override
  State<FixedPart> createState() => _FixedPartState();
}

class _FixedPartState extends State<FixedPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 12,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Container(
                  width: MediaQuery.sizeOf(context).width / 2.5,
                  height: MediaQuery.sizeOf(context).height / 18,
                  decoration: BoxDecoration(
                      color: Color(0XFF218C03),
                      borderRadius: BorderRadius.circular(25)),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Text(
                      "اضافة الى السلة",
                      style: TextStyle(
                          fontFamily: 'Fonts', color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "1",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Color(0XFFF2A007),
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          )),
    );
  }
}
