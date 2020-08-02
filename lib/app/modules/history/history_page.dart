import 'package:app_sintec/app/modules/history/widgets/bottomNav.dart';
import 'package:app_sintec/app/modules/history/widgets/covid/covid_page.dart';
import 'package:app_sintec/app/modules/history/widgets/customBar.dart';
import 'package:app_sintec/app/modules/history/widgets/detailsHistory/detailsHistory.dart';
import 'package:app_sintec/app/modules/history/widgets/listView.dart';
import 'package:app_sintec/app/modules/history/widgets/search.dart';

import 'package:app_sintec/app/modules/profile/profile_page.dart';
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
  int _currentIndex;
  PageController _pageController = PageController();

  @override
  void initState() {
    _currentIndex = 0;
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            Container(
              width: _screenWidth,
              height: _screenHeight,
              decoration: BoxDecoration(gradient: customTheme()),
              child: Container(
                height: _screenHeight / 1.0,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 0,
                      child: CustomAppBar(),
                    ),
                    Positioned(
                      top: _screenHeight * .110,
                      left: _screenWidth * .25,
                      child: TabBar(
                        labelColor: Colors.white,
                        indicatorColor: Colors.white,
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
                            ListViewCustom(),
                            Container(
                              width: _screenWidth,
                              height: _screenHeight,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/icons/sinctec.png',
                                    width: 120,
                                    height: 120,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  CircularProgressIndicator(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            DetailsHistory(),
            CovidPage(),
            ProfilePage()
          ],
        ),
        bottomNavigationBar: bottomNav(onBottomTapped, _currentIndex));
  }

  void onBottomTapped(int index) {
    setState(() {
      _currentIndex = index;

      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 1), curve: Curves.ease);
    });
  }
}
