import 'package:flutter/material.dart';

class ListViewCustomProfile extends StatefulWidget {
  const ListViewCustomProfile({
    Key key,
  }) : super(key: key);

  @override
  _ListViewCustomProfileState createState() => _ListViewCustomProfileState();
}

class _ListViewCustomProfileState extends State<ListViewCustomProfile> {
  List<String> _list = [
    'Consultar romaneios',
    'Consultar remessa',
    'Consultar fotos',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.only(left: 15.0, top: 15.0),
          itemCount: 3,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.dashboard),
                title: Text(_list[index]),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }),
    );
  }
}
