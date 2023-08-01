import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChatContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  CustomChatContainer({
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Container(
            height: MediaQuery.sizeOf(context).height / 9,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("Assets/Icons/logo.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontFamily: 'Fonts',fontSize: 20),
                      ),
                      Text(
                        subtitle,
                        style:
                            TextStyle(fontFamily: 'Fonts', color: Colors.grey,fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
