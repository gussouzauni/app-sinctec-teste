import 'package:app_sintec/app/modules/history/widgets/detailsHistory/cardsDetailsHistory.dart';
import 'package:app_sintec/app/modules/history/widgets/detailsHistory/customBarDetails.dart';
import 'package:flutter/material.dart';

class DetailsHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: _height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CustomBarDetails(),
            ),
            Positioned(
              top: _height * .20,
              left: 0,
              right: 0,
              child: CardEnterprise(),
            ),
            Positioned(
              top: _height * .20,
              left: 0,
              right: 0,
              child: CardResponsible(),
            ),
          ],
        ),
      ),
    );
  }
}
