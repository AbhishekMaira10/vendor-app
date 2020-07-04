import 'package:flutter/material.dart';
import 'package:deldrone_vendor/src/admin/pages/add_food_item.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      title: "Food Delivery Vendor App",
      home: AddFoodItem(),
    );
  }
}
