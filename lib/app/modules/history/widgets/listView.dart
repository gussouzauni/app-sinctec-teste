import 'package:flutter/material.dart';

class ListViewCustom extends StatefulWidget {
  @override
  _ListViewCustomState createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 100,
            child: Card(elevation: 10, child: Icon(Icons.card_giftcard)),
          );
        },
      ),
    );
  }
}
