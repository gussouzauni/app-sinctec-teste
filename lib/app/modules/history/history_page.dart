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

class _HistoryPageState extends ModularState<HistoryPage, HistoryController>
    with TickerProviderStateMixin {
  //use 'controller' variable to access controller

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

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
                height: _screenHeight / 1.0,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 0,
                      child: CustomAppBar(),
                    ),
                    Positioned(
                      top: _screenHeight * .130,
                      left: _screenWidth * .25,
                      child: TabBar(
                        labelColor: Colors.white,
                        isScrollable: true,
                        controller: _tabController,
                        tabs: <Widget>[
                          Tab(
                            text: 'Pendentes',
                          ),
                          Tab(
                            text: 'Realizadas',
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: _screenHeight * .22,
                      left: 10,
                      right: 10,
                      child: SearchCustom(),
                    ),
                    Positioned(
                      top: _screenHeight * .30,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        height: _screenHeight,
                        child: TabBarView(
                          controller: _tabController,
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.purple,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.amber,
                            )
                          ],
                        ),
                      ),
                    )
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
