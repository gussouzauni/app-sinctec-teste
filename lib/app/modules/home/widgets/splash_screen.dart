import 'package:app_sintec/app/modules/home/widgets/slides.dart';
import 'package:app_sintec/app/shared/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreenCustom extends StatefulWidget {
  @override
  _SplashScreenCustomState createState() => _SplashScreenCustomState();
}

class _SplashScreenCustomState extends State<SplashScreenCustom> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => IntroSlides()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(gradient: customTheme()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/icons/drone.png',
            width: 90,
            height: 90,
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
