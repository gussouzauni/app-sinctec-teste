import 'package:app_sintec/app/shared/utils/method.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSlides extends StatefulWidget {
  @override
  _IntroSlidesState createState() => _IntroSlidesState();
}

class _IntroSlidesState extends State<IntroSlides> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "Facilidade no seu trabalho",
        maxLineTitle: 2,
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        colorBegin: Color(0xff7159c1),
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        centerWidget:
            Methods().svgCustom('assets/icons/mobile_life.svg', 200, 200),
        description:
            'O Sinclog veio para tornar seu dia mais produtivo, organizado, prático, leve e gostoso de trabalhar',
        styleDescription: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        onCenterItemPress: () {},
      ),
    );
  }

  void onDonePress() {
    Navigator.pop(context);
    Modular.to.pushNamed('/login');
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.white,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.purple,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffD02090),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Colors.white,
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Colors.white,

      // Dot indicator
      colorDot: Color(0x33D02090),
      colorActiveDot: Color(0xffD02090),
      sizeDot: 13.0,

      // Show or hide status bar

      shouldHideStatusBar: true,
    );
  }
}
