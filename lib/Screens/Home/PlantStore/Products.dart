import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Home/PlantStore/PlantStore.dart';
import 'package:plantsworld/Screens/PaymentSystem/Cart.dart';

import '../../../Models/FavoritesModel.dart';
import '../../Notifications Screen.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
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
            "المنتجات",
            style: TextStyle(color: Colors.black, fontFamily: 'Fonts'),
          ),
        ),
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationsScreen()));

                },
                icon: Image.asset(
                  'Assets/Icons/notification.png',
                  width: 25,
                  height: 25,
                )
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));

                },
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
                    context, MaterialPageRoute(builder: (context) => PlantStore()));
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
        padding: const EdgeInsets.symmetric(horizontal: 25),
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
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: '',
                ),
              ),
              Positioned(
                right: 16.0,
                child: Row(
                  children: [
                    Text(
                      '... بحث',
                      style:
                      TextStyle(color: Colors.grey, fontFamily: 'Fonts'),
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
            SizedBox(height: 20,),
            Expanded(
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
                      padding: const EdgeInsets.all(11.0),
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
                                  Image.asset(
                                    'Assets/Icons/cart.png',
                                    width: 25,
                                    height: 25,
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
        ],),
      ),
    );
  }
}
