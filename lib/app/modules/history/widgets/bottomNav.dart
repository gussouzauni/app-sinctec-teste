import 'package:flutter/material.dart';

Widget bottomNav(Function onBottomTapped, int _currentIndex) {
  return BottomNavigationBar(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    onTap: onBottomTapped,
    currentIndex: _currentIndex,
    items: [
      BottomNavigationBarItem(
        icon: new Icon(
          Icons.home,
          color: Colors.blue,
        ),
        title: new Text(
          'Início',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: new Icon(
          Icons.card_travel,
          color: Colors.blue,
        ),
        title: new Text(
          'Viagens',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.data_usage,
            color: Colors.blue,
          ),
          title: Text(
            'API',
            style: TextStyle(
              color: Colors.grey,
            ),
          )),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.dashboard,
            color: Colors.blue,
          ),
          title: Text(
            'Mais',
            style: TextStyle(
              color: Colors.grey,
            ),
          ))
    ],
  );
}
