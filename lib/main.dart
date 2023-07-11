import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Crops/CropsView.dart';
import 'package:plantsworld/Screens/Favorites/FavoritesScreen.dart';
import 'package:plantsworld/Screens/Home/PlantStore/PlantStore.dart';
import 'package:plantsworld/Screens/More/Contact%20us.dart';
import 'package:plantsworld/Screens/More/More.dart';
import 'package:plantsworld/Screens/More/subscriptoin.dart';

import 'package:plantsworld/Splash.dart';

import 'Screens/Home/NavigationBar.dart';
import 'Screens/Home/home.dart';
import 'Screens/LoginSystem/OTP.dart';
import 'Screens/More/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
