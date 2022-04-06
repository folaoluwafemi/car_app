import 'package:car_app/config/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRouter.homePage,
      onGenerateRoute: AppRouter.route,
    );
  }
}
