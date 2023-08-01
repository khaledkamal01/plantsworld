import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Favorites/FavoritesScreen.dart';

import '../More/More.dart';
import '../Offers/offersScreen.dart';
import '../Orders/Orders.dart';
import 'home.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  List screens = [
    More(),
    OffersScreen(),
    FavoritesScreen(),
    OrdersScreen(),
    Home()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(indicatorColor: Colors.white),
          child: BottomNavigationBar(
            selectedItemColor: Color(0XFF218C03),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz), label: 'المزيد'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer), label: 'العروض'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: 'المفضلة'),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'Assets/Icons/Orders.png',
                  height: MediaQuery.sizeOf(context).height/30,
                  width: MediaQuery.sizeOf(context).width/16,
                ),
                label: 'الطلبات',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'الرئيسية'),
            ],
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        body: screens[currentIndex],
      ),
    );
  }
}
