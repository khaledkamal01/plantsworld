import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final ImageProvider image;
  final VoidCallback onTap;

  CustomContainer({
    required this.text,
    required this.image,
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
            height: MediaQuery.sizeOf(context).height/18,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_rounded, color: Colors.grey),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          text,
                          style: TextStyle(fontFamily: 'Fonts', fontSize: 17),
                        ),
                      ),
                      Image(image: image),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
