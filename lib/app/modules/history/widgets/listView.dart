import 'package:flutter/material.dart';

class ListViewCustom extends StatefulWidget {
  @override
  _ListViewCustomState createState() => _ListViewCustomState();
}

class _ListViewCustomState extends State<ListViewCustom> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 0, left: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.shopping_basket,
                        size: 40,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.purple,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'APPLE',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Coleta',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Limão - SP',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '8:00',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
