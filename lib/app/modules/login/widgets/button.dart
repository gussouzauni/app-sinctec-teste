import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushNamed('history'),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ENTRAR',
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
