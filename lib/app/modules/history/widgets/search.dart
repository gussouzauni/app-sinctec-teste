import 'package:flutter/material.dart';

class SearchCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50.0)),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Pesquisar',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
