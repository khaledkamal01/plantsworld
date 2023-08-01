import 'package:flutter/material.dart';

import '../../../../Models/FavoritesModel.dart';

class ListOfRelated extends StatefulWidget {
  ListOfRelated({Key? key}) : super(key: key);

  @override
  State<ListOfRelated> createState() => _ListOfRelatedState();
}

class _ListOfRelatedState extends State<ListOfRelated> {
  final List<Favorites> favorites = [
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
    return Padding(
      padding: const EdgeInsets.only(right:5),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: MediaQuery.sizeOf(context).height / 3,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        height: MediaQuery.sizeOf(context).height/4,
                        width: MediaQuery.sizeOf(context).width/2.8,
                        child: Image(
                          image: AssetImage(favorites[index].image),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(favorites[index].name),
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
                        ],
                      ),
                      Text(
                        " ر.س  " + favorites[index].price.toString(),
                        style: TextStyle(color: Color(0XFF218C03)),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height/23,
                        width: MediaQuery.sizeOf(context).width/2.5,
                        color: Color(0XFFF2A007),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'Assets/Icons/cart.png',
                                width: 25,
                                height: 25,
                                color: Colors.white,
                              ),
                              Text(
                                "اضافة الى السلة",
                                style: TextStyle(color: Colors.white,fontFamily: 'Fonts'),
                              ),

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
            itemCount: favorites.length,
          ),
        ),
      ),
    );
  }
}
