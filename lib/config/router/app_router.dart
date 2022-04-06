import 'package:car_app/ui/screens/car_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String homePage = CarPage.id;


  static Route route(RouteSettings settings) {
    if (settings.name == homePage) {
      return MaterialPageRoute(builder: (context) => const CarPage());
    } else {
      return MaterialPageRoute(
        builder: (context) => const SafeArea(
          child: Scaffold(
            body: Center(
              child: Text('you must have navigated to the wrong route'),
            ),
          ),
        ),
      );
    }
  }
}
