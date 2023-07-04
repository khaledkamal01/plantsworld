import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Favorites/FavoritesScreen.dart';

import '../Orders/Orders.dart';
import 'home.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;
  List screens = [ FavoritesScreen(),OrdersScreen(),Home()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(indicatorColor: Colors.white),
          child: BottomNavigationBar(

            selectedItemColor: Colors.green,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),label: 'المفضلة'),
              BottomNavigationBarItem(
                   icon: Icon(Icons.home_filled),label: 'الطلبات'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),label: 'الرئيسية'),

                        // BottomNavigationBarItem(
                        //     icon: Icon(Icons.home_filled),label: 'الطلبات'),
                        // BottomNavigationBarItem(
                        //     icon: Icon(Icons.home_filled),label: 'الرئيسية')
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
