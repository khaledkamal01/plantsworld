// alert_dialog.dart
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text("نصائح للتصوير")),
      content: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 7,
                width: MediaQuery.sizeOf(context).width / 1.5,
                color: Colors.grey.shade300,
              ),
              Container(
                color: Colors.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Text(
            "سيؤدي التالي لنتائج غير دقيقة",
            style: TextStyle(fontFamily: 'Fonts'),
          ),
          Row(
            children: [
              CustomContainerInDialog(
                text: 'بعيد جدا',
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 50,
              ),
              CustomContainerInDialog(
                text: 'قريب جدا',
              ),
            ],
          ),
          Row(
            children: [
              CustomContainerInDialog(
                text: 'ضبابية',
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 50,
              ),
              CustomContainerInDialog(
                text: 'عدة انواع',
              ),
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height/10,),
          Center(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0XFF218C03),
                ),
                height: MediaQuery.sizeOf(context).height / 20,
                width: MediaQuery.sizeOf(context).width / 2,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "اعي ذلك",
                    style: TextStyle(color: Colors.white, fontFamily: 'Fonts'),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class CustomContainerInDialog extends StatelessWidget {
  final String text;

  CustomContainerInDialog({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 7,
              width: MediaQuery.sizeOf(context).width / 3.1,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.red,
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            )
          ],
        ),
        Text(
          text,
          style: TextStyle(fontFamily: 'Fonts', fontSize: 12),
        )
      ],
    );
  }
}
