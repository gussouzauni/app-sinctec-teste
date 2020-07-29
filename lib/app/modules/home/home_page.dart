import 'package:app_sintec/app/shared/utils/color.dart';
import 'package:app_sintec/app/shared/utils/methods.dart';
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
        seconds: 4,
        gradientBackground: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.white]),
        navigateAfterSeconds: HomeScreen(),
        loaderColor: Color(0xff7159c1),
        image: Image.asset('assets/icons/company.png'));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
      ),
    );
  }
}
