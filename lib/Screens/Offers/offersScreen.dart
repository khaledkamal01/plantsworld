import 'package:flutter/material.dart';

import '../../Models/FavoritesModel.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<OffersScreen> {
  final List<Favorites> favorites = [
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
    Favorites(image: "Assets/Images/plant.png", name: "potato", price: 30),
  ];
  bool isIcon1Selected = true;

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
            "العروض",
            style: TextStyle(color: Colors.black,fontFamily: 'Fonts'),
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
              icon:Image.asset(
                'Assets/Icons/cart.png',
                width: 25,
                height: 25,
              )
            ),
          ],
        ),
        leadingWidth: MediaQuery.sizeOf(context).width / 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            crossAxisSpacing: 15, // Spacing between columns
            mainAxisSpacing: 15, //
            childAspectRatio: 0.60, // Spacing between rows
          ),
          itemCount: favorites.length,
          itemBuilder: (BuildContext context, int index) {
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
                          "500",
                          style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
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
        ),
      ),
    );
  }
}
