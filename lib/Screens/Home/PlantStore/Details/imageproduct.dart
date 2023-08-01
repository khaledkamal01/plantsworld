import 'package:flutter/material.dart';

class ImageInDetails extends StatelessWidget {
  const ImageInDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage("Assets/Images/plant3.png"),
          width: MediaQuery.sizeOf(context).width,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).width * 0.14,
                width: MediaQuery.sizeOf(context).width * 0.14,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade100),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red.shade900,
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.40,
              left: MediaQuery.sizeOf(context).width * 0.08),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.1,
            height: MediaQuery.sizeOf(context).height * 0.03,

            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15)),
            // decoration:
            //     BoxDecoration(
            //         shape: BoxShape.circle, color: Colors.grey.shade400),
            child: Center(
              child: Text(
                "1/4",
                style: TextStyle(
                    fontFamily: 'Fonts', color: Color(0XFF218C03)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
