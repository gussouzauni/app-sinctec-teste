import 'package:app_sintec/app/shared/auth/repositories/auth_repository_interface.dart';
import 'package:firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future getFacebookLogin() {
    // TODO: implement getFacebookLogin
    throw UnimplementedError();
  }

  @override
  Future getGoogleLogin() {
    // TODO: implement getGoogleLogin
    throw UnimplementedError();
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<String> getEmailPasswordLogin(String email, String password) async {
    // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    // AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
    //     email: email, password: password);
    // FirebaseUser user = result.user;
    // return user.uid;
  }
}

class FirebaseAuth {
  signInWithEmailAndPassword({String email, String password}) {}
}
