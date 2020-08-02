import 'package:flutter/material.dart';

class AppBarCustomProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: _screenWidth,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      height: 130,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/icons/photo.png'),
                ),
                borderRadius: BorderRadius.circular(100.0)),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: _screenHeight * .100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Gustavo Souza',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  'TRANS NACIONAL',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
