import 'package:flutter/material.dart';

class HeaderCustomLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Seja bem vindo',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 20,
        ),
        Image.asset(
          'assets/icons/drone.png',
          width: 60,
          height: 60,
        )
      ],
    );
  }
}
