import 'package:black_food_app/ui/authentication/login.dart';
import 'package:black_food_app/ui/home/food_details.dart';
import 'package:black_food_app/ui/home/home.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case '/details':
      return MaterialPageRoute(builder: (context) => const FoodDetails());
    case '/home':
      return MaterialPageRoute(builder: (BuildContext context) => const Home());
    case '/login':
      return MaterialPageRoute(builder: (BuildContext context) => LoginScreen());
  }
  return null;
}
