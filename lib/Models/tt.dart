// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text("تعفن الاوراق"),
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Text(
// "80%",
// style: TextStyle(
// fontFamily: 'Fonts',
// color: Color(0XFF218C03)),
// ),
// Text("تعرف على النبات بدقة تصل الى"),
// ],
// ),
// Divider(
// color: Colors.grey,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Text(
// "الحالة الصحية",
// style: TextStyle(
// fontFamily: 'Fonts',
// ),
// ),
// SizedBox(
// width: MediaQuery.sizeOf(context).width / 40,
// ),
// Image(
// image: AssetImage("Assets/Images/Status.png"),
// width: MediaQuery.sizeOf(context).width / 15,
// )
// ],
// ),
// Text(
// "تعفن الاوراق",
// style: TextStyle(
// fontFamily: 'Fonts',
// ),
// ),
// Text(
// "اوراق نباتاتك تتعفن مما يشير الى انه مصاب",
// style: TextStyle(
// fontFamily: 'Fonts',
// ),
// ),
// ListView.separated(
//   scrollDirection: Axis.horizontal,
//     shrinkWrap: true,
//     itemBuilder: (BuildContext context, index) {
//       return Container(
//         width: MediaQuery.sizeOf(context).width / 10,
//         height: MediaQuery.sizeOf(context).height / 10,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(
//                     "Assets/Images/plant3.png"))),
//       );
//     },
//     separatorBuilder: (BuildContext context, index) {
//       return SizedBox(
//         width: MediaQuery.sizeOf(context).width / 40,
//       );
//     },
//     itemCount: diseaseDetails.length)
// ],
// ),