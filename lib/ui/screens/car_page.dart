import 'dart:math';

import 'package:car_app/ui/%20utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              const FirstPageView(),
              SecondPageView(
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

class FirstPageView extends StatelessWidget {
  const FirstPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 106,
            ),
            Text(
              'Welcome Samuel',
              style: defaultTextStyle(),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Swip left/right to view others car',
              style: extraLightTextStyle(),
            ),
            const SizedBox(height: 44),
            Image.asset(
              carLogoAsset,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 34),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  transform: GradientRotation(pi / 2),
                  colors: [
                    backgroundColor,
                    backgroundColor,
                    carShadeColor.withOpacity(0.4),
                    backgroundColor,
                  ],
                ),
              ),
              child: Image.asset(audiCarAsset),
            ),
            Text(
              'Repair credit balance',
              style: extraLightTextStyle()
                  .copyWith(color: Colors.white.withOpacity(0.54)),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'N',
                    style: defaultTextStyle().copyWith(
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '122,300',
                    style: defaultTextStyle().copyWith(fontSize: 40),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'swipe up to use service',
              style: extraLightTextStyle(),
            ),
          ],
        ),
      );
    });
  }
}

class SecondPageView extends StatelessWidget {
  final VoidCallback navigateBack;

  const SecondPageView({
    required this.navigateBack,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () => navigateBack,
                  icon: SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/images/back_arrow_circular.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset('assets/images/menu_bar.png'),
                ),
              ),
            ],
          ),
          Image.asset(carLogoAsset),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 65, vertical: 18),
            decoration: BoxDecoration(
              border: Border.all(
                color: textColor,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Audi',
                  style: extraLightTextStyle(),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'A6',
                  style: extraLightTextStyle(),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'EXT434TG',
                  style: extraLightTextStyle(),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        transform: const GradientRotation(pi / 2),
                        colors: [
                          backgroundColor,
                          backgroundColor,
                          carShadeColor.withOpacity(0.4),
                          backgroundColor,
                        ],
                      ),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(leftCarAsset),
                              const SizedBox(
                                width: 167,
                              ),
                              Image.asset(rightCarAsset),
                            ],
                          ),
                          Image.asset(audiCarAsset),
                          SizedBox(
                            width: constraints.maxWidth,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      color: textColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        bottom: 2,
                      ),
                      child: Text(
                        'NEXT SERVICE',
                        style: extraLightTextStyle().copyWith(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Chip(
                      backgroundColor: const Color(0xff0A0B0C),
                      elevation: 0.0,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xff0A0B0C)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      label: Text(
                        'NOV 30, 2021',
                        style: defaultTextStyle().copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15, bottom: 2),
                      child: Text(
                        'DOCUMENT EXPIRING',
                        style: extraLightTextStyle().copyWith(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Chip(
                      backgroundColor: const Color(0xff0A0B0C),
                      elevation: 0.0,
                      shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xff0A0B0C)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      label: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'NOV 30, 2021',
                          style: defaultTextStyle().copyWith(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 59,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  bottom: 6.0,
                ),
                child: RawMaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    side: BorderSide(color: textColor),
                  ),
                  fillColor: Colors.transparent,
                  onPressed: null,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(toolAsset),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'QUICK FIX',
                            style: extraLightTextStyle().copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  bottom: 6.0,
                ),
                child: RawMaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    side: BorderSide(color: textColor),
                  ),
                  fillColor: const Color(0xff6E0000),
                  onPressed: () {},
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(plusIcon),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'ACCIDENT',
                            style: extraLightTextStyle().copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  bottom: 6.0,
                ),
                child: RawMaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    side: BorderSide(color: textColor),
                  ),
                  fillColor: Colors.transparent,
                  onPressed: () {},
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(
                              supportAsset,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SERVICE REQUEST',
                            style: extraLightTextStyle().copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      );
    });
  }
}
