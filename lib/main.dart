import 'package:car_app/ui/screens/car_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CarPage.id,
      onGenerateRoute: (settings) {
        if (settings.name == CarPage.id) {
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
      },
    );
  }
}
