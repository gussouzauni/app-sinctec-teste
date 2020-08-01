import 'package:app_sintec/app/modules/login/login_controller.dart';
import 'package:app_sintec/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'repositories/auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();
  final LoginController loginController = LoginController();

  @observable
  FirebaseUser user;

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

  @action
  setUser(FirebaseUser value) => user = value;

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser);
  }

  @action
  signInEmailPassword() {
    return _authRepository.getEmailPasswordLogin(
        loginController.email.text, loginController.password.text);
  }
}
