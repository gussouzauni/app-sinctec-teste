import 'package:flutter/material.dart';

class FormCustomLogin extends StatefulWidget {
  @override
  _FormCustomLoginState createState() => _FormCustomLoginState();
}

class _FormCustomLoginState extends State<FormCustomLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(30.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      prefixIcon: Icon(
                        Icons.email,
                        size: 24,
                        color: Colors.white,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Esqueceu o usuário?'),
                ],
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 24,
                        color: Colors.white,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Esqueceu a senha?'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
