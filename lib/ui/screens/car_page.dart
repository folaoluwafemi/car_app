import 'package:car_app/ui/%20utils/utils.dart';
import 'package:car_app/ui/screens/welcome_page.dart';
import 'package:flutter/material.dart';

import 'info_page.dart';

class CarPage extends StatefulWidget {
  static const String id = '/car_page';

  const CarPage({Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: backgroundColor,
          child: PageView(
            scrollDirection: Axis.vertical,
            children: [
              const WelcomePage(),
              InfoPage(
                navigateBack: () {
                  pageController.previousPage(
                      duration: Duration.zero, curve: Curves.ease);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
