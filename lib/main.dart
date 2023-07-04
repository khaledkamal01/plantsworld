import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Crops/CropsView.dart';
import 'package:plantsworld/Screens/Favorites/FavoritesScreen.dart';

import 'package:plantsworld/Splash.dart';

import 'Screens/Home/NavigationBar.dart';
import 'Screens/Home/home.dart';
import 'Screens/LoginSystem/OTP.dart';

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
      home: Navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
