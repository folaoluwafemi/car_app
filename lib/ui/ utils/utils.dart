import 'package:flutter/material.dart';


const String plusIcon = 'assets/images/plus_icon.png';
const String supportAsset = 'assets/images/support.png';
const String boltAsset = 'assets/images/bolt.png';
const String toolAsset = 'assets/images/tool.png';
const String audiCarAsset = 'assets/images/audi_car.png';
const String leftCarAsset = 'assets/images/car_image_left.png';
const String rightCarAsset = 'assets/images/car_image_right.png';
const String carLogoAsset = 'assets/images/car_logo.png';
const String interRegularAsset = 'assets/fonts/inter_regular.tff';
const String interExtraLightAsset = 'assets/fonts/inter_extra_light.tff';


const Color backgroundColor = Colors.black;
const Color carShadeColor = Color(0xff071326);

const Color textColor = Color(0xffF2C94C);

TextStyle defaultTextStyle() => const TextStyle(
  fontFamily: 'Inter',
  color: Colors.white,
);
TextStyle extraLightTextStyle() => const TextStyle(
  fontFamily: 'Inter',
  color: textColor,
  fontWeight: FontWeight.w300
);
