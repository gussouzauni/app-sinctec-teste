import 'package:app_sintec/app/modules/history/widgets/customBar.dart';
import 'package:app_sintec/app/modules/history/widgets/search.dart';
import 'package:app_sintec/app/shared/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'history_controller.dart';

class HistoryPage extends StatefulWidget {
  final String title;
  const HistoryPage({Key key, this.title = "History"}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends ModularState<HistoryPage, HistoryController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double _screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: customTheme()),
        child: Stack(
          children: [
            Positioned(
              child: CustomAppBar(),
            ),
            Positioned(
              top: _screenheight * .22,
              left: 10,
              right: 10,
              child: SearchCustom(),
            )
          ],
        ),
      ),
    );
  }
}
