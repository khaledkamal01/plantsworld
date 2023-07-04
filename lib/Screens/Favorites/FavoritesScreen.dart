import 'package:flutter/material.dart';

import '../../Models/FavoritesModel.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final List<Favorites> favorites = [
    Favorites(image: "Assets/plant.jpg", name: "potato", price: 30),
    Favorites(image: "image", name: "potato", price: 30),
    Favorites(image: "image", name: "potato", price: 30),
    Favorites(image: "image", name: "potato", price: 30),
    Favorites(image: "image", name: "potato", price: 30),
    Favorites(image: "image", name: "potato", price: 30),
  ];

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
            "المفضلة",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_rounded,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_sharp,
                color: Colors.black,
              ),
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
            childAspectRatio: 0.65,// Spacing between rows
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
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text(favorites[index].name),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          " ر.س  " + favorites[index].price.toString(),
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      color: Colors.orange,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "اضافة الى السلة",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.shopping_cart_sharp,color: Colors.white,)
                        ],
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
