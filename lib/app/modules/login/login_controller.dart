import 'package:app_sintec/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController password = TextEditingController();
}
