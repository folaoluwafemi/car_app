import 'dart:math';

import 'package:car_app/ui/%20utils/utils.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
              'Swipe left/right to view others car',
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
                  transform: const GradientRotation(pi / 2),
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
