import 'package:app_sintec/app/modules/history/widgets/customBar.dart';
import 'package:app_sintec/app/modules/history/widgets/listView.dart';
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
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          width: _screenWidth,
          height: _screenHeight,
          decoration: BoxDecoration(gradient: customTheme()),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.amber,
                height: _screenHeight / 1.0,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 0,
                      child: CustomAppBar(),
                    ),
                    Positioned(
                      top: _screenHeight * .22,
                      left: 10,
                      right: 10,
                      child: SearchCustom(),
                    ),
                    Positioned(
                        top: _screenHeight * .30,
                        left: 0.0,
                        right: 0.0,
                        bottom: 0.0,
                        child: ListViewCustom())
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
