import 'package:app_sintec/app/modules/home/widgets/slides.dart';
import 'package:app_sintec/app/shared/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

import 'package:splashscreen/splashscreen.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        gradientBackground: customTheme(),
        navigateAfterSeconds: IntroSlides(),
        loaderColor: Colors.white,
        photoSize: 60,
        image: Image.asset(
          'assets/icons/drone.png',
        ));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
