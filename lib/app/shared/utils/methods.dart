import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Methods {
  Widget assetImage(String assetName) {
    return new SvgPicture.asset(assetName);
  }
}
