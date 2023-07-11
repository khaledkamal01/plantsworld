import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Home/home.dart';

import '../../../Models/CategoriesModel.dart';
import '../../../Models/FavoritesModel.dart';

class PlantStore extends StatefulWidget {
  PlantStore({Key? key}) : super(key: key);

  @override
  State<PlantStore> createState() => _PlantStoreState();
}

class _PlantStoreState extends State<PlantStore> {
  final List<Categories> categories = [
    Categories(image: "Assets/Images/plant1.png"),
    Categories(image: "Assets/Images/plant1.png"),
    Categories(image: "Assets/Images/plant1.png"),
    Categories(image: "Assets/Images/plant1.png"),
    Categories(image: "Assets/Images/plant1.png"),
    Categories(image: "Assets/Images/plant1.png"),
  ];

  final List<Favorites> favorites=[
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
  ];

  bool isIcon1Selected = false;

  void toggleIcon() {
    setState(() {
      isIcon1Selected = !isIcon1Selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "متجر النباتات",
            style: TextStyle(color: Colors.black, fontFamily: 'Fonts'),
          ),
        ),
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'Assets/Icons/notification.png',
                width: 25,
                height: 25,
              )
            ),
            IconButton(
                onPressed: () {},
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
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16.0),
                          hintText: '',
                        ),
                      ),
                      Positioned(
                        right: 16.0,
                        child: Row(
                          children: [
                            Text(
                              '... بحث',
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: 'Fonts'),
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "عرض الكل",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                                fontFamily: 'Fonts'),
                          )),
                      Text(
                        "التصنيفات",
                        style: TextStyle(
                          fontFamily: 'Fonts',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 100,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Image(image: AssetImage(categories[index].image));
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.0,
                    ),
                    itemCount: categories.length,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "عرض الكل",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Fonts'),
                      )),
                  Text(
                    "الاكثر طلبا",
                    style: TextStyle(
                      fontFamily: 'Fonts',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 270,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                child: Image(
                                  image: AssetImage(favorites[index].image),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(

                                    icon: isIcon1Selected
                                        ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                        : Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                    onPressed: toggleIcon,
                                  ),
                                  Text(favorites[index].name),
                                ],
                              ),
                              Row(

                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Text(
                                    " ر.س  " + favorites[index].price.toString(),
                                    style: TextStyle(color: Color(0XFF218C03)),
                                  ),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 140,
                                color: Color(0XFFF2A007),
                                child: MaterialButton(
                                  onPressed: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "اضافة الى السلة",
                                        style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                                      ),
                                      Icon(
                                        Icons.shopping_cart_sharp,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.0,
                    ),
                    itemCount: categories.length,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "عرض الكل",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Fonts'),
                      )),
                  Text(
                    "اضيف حديثا",
                    style: TextStyle(
                      fontFamily: 'Fonts',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 270,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            children: [
                              Container(
                                width: 140,
                                height: 140,
                                child: Image(
                                  image: AssetImage(favorites[index].image),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(

                                    icon: isIcon1Selected
                                        ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                        : Icon(
                                      Icons.favorite_border,
                                      color: Colors.grey,
                                    ),
                                    onPressed: toggleIcon,
                                  ),
                                  Text(favorites[index].name),
                                ],
                              ),
                              Row(

                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Text(
                                    " ر.س  " + favorites[index].price.toString(),
                                    style: TextStyle(color: Color(0XFF218C03)),
                                  ),
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 140,
                                color: Color(0XFFF2A007),
                                child: MaterialButton(
                                  onPressed: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "اضافة الى السلة",
                                        style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                                      ),
                                      Icon(
                                        Icons.shopping_cart_sharp,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.0,
                    ),
                    itemCount: categories.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
