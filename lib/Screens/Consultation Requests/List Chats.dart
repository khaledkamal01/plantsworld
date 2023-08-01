import 'package:flutter/material.dart';

import 'Custom chat container.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("الاستشارات"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.navigate_next),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomChatContainer(
                  title: "استشارة رقم 3", subtitle: "مرحبا", onTap: () {}),
              CustomChatContainer(
                  title: "استشارة رقم 3", subtitle: "مرحبا", onTap: () {}),
              CustomChatContainer(
                  title: "استشارة رقم 3", subtitle: "مرحبا", onTap: () {}),
              SizedBox(height: MediaQuery.sizeOf(context).height/3,),
              Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 20),
                child: GestureDetector(
                  onTap: (){},
                  child: CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.add),
                    backgroundColor: Color(0XFF218C03),
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
