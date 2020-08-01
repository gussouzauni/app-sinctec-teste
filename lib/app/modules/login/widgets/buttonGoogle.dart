import 'package:flutter/material.dart';

class ButtonGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(
              'assets/icons/google.png',
            )),
            borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}
