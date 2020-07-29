import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Methods {
  Widget svgCustom(String assetName, double width, double height) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
    );
  }
}
