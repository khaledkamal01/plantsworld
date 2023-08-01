import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Camera/Camera%20Screen.dart';

class ScaningPictureScreen extends StatefulWidget {
  const ScaningPictureScreen({Key? key}) : super(key: key);

  @override
  State<ScaningPictureScreen> createState() => _ScaningPictureScreenState();
}

class _ScaningPictureScreenState extends State<ScaningPictureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("التشخيص الصحي"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CameraScreen()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery
                  .sizeOf(context)
                  .height / 2.5,
              width: MediaQuery
                  .sizeOf(context)
                  .width / 1,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: MediaQuery
                .sizeOf(context)
                .height / 50,),
            Text(
              "تم التعرف على المرض بدقة تصل الى 80%",
              style: TextStyle(
                  fontFamily: 'Fonts', color: Color(0XFF218C03), fontSize: 17),
            ),
            SizedBox(height: MediaQuery
                .sizeOf(context)
                .height / 50,),
            Text("data"),
            SizedBox(height: MediaQuery
                .sizeOf(context)
                .height / 20,),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0XFF218C03),
                  ),
                  height: MediaQuery
                      .sizeOf(context)
                      .height / 20,
                  width: MediaQuery
                      .sizeOf(context)
                      .width / 2,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "التعرف اكثر",
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Fonts'),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
