import 'package:flutter/material.dart';
import 'package:plantsworld/Screens/Camera/Camera%20Screen.dart';
import 'package:plantsworld/Screens/Crops/CropsView.dart';
import 'package:plantsworld/Screens/Favorites/FavoritesScreen.dart';
import 'package:plantsworld/Screens/Home/PlantStore/Details/Details.dart';
import 'package:plantsworld/Screens/Home/PlantStore/PlantStore.dart';
import 'package:plantsworld/Screens/Home/PlantStore/Products.dart';
import 'package:plantsworld/Screens/More/Contact%20us.dart';
import 'package:plantsworld/Screens/More/More.dart';
import 'package:plantsworld/Screens/More/subscriptoin.dart';
import 'package:plantsworld/Screens/Notifications%20Screen.dart';
import 'package:plantsworld/Screens/Onboarding/Onboarding1.dart';
import 'package:plantsworld/Screens/Orders/DetailsOrder/CancelOrder.dart';
import 'package:plantsworld/Screens/Orders/DetailsOrder/DetailsOrder.dart';
import 'package:plantsworld/Screens/PaymentSystem/AddLocation.dart';
import 'package:plantsworld/Screens/PaymentSystem/OrderPlaced.dart';
import 'package:plantsworld/Screens/PaymentSystem/Payment1.dart';
import 'package:plantsworld/Screens/PaymentSystem/PaymentComplete.dart';
import 'package:plantsworld/Screens/PaymentSystem/PaymentMethod.dart';

import 'package:plantsworld/Splash.dart';

import 'Models/CategoriesModel.dart';
import 'Screens/Camera/Details Plant/Details Screen.dart';
import 'Screens/Camera/Scaning Picture/Scaning Picture Screen.dart';
import 'Screens/Consultation Requests/Consultation Crops.dart';
import 'Screens/Consultation Requests/List Chats.dart';
import 'Screens/Consultation Requests/Payment Consultation.dart';
import 'Screens/Consultation Requests/Sent Done.dart';
import 'Screens/Consultation Requests/Supscription Done.dart';
import 'Screens/Consultation Requests/rating Consult dialog.dart';
import 'Screens/Home/Land scaping.dart';
import 'Screens/Home/NavigationBar.dart';
import 'Screens/Home/PlantStore/Categories.dart';
import 'Screens/Home/health diagnosis/Subscription.dart';
import 'Screens/Home/health diagnosis/health diagnosis.dart';
import 'Screens/Home/home.dart';
import 'Screens/Instructions/Details.dart';
import 'Screens/Instructions/Instructions.dart';
import 'Screens/Instructions/Tips and plant care.dart';
import 'Screens/LoginSystem/Login-1.dart';
import 'Screens/LoginSystem/OTP.dart';
import 'Screens/More/profile.dart';
import 'Screens/Onboarding/Onboarding2.dart';
import 'Screens/Orders/DetailsOrder/ordersindetails.dart';
import 'Screens/PaymentSystem/Cart.dart';
import 'Screens/Sitting/Sitting Screen.dart';
import 'Screens/Subscriptions/Subscriptions Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: DetailsScannerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
