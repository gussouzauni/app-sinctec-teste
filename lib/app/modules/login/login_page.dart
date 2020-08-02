import 'package:app_sintec/app/modules/login/widgets/button.dart';
import 'package:app_sintec/app/modules/login/widgets/buttonGoogle.dart';
import 'package:app_sintec/app/modules/login/widgets/forms.dart';
import 'package:app_sintec/app/modules/login/widgets/header.dart';
import 'package:app_sintec/app/shared/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  HeaderCustomLogin(),
                  FormCustomLogin(),
                  ButtonGoogle(),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(child: ButtonLogin()),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: 'Novo no SincLog? ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      TextSpan(
                          text: 'Cadastra-se já!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
