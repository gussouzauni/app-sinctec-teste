abstract class IAuthRepository {
  Future getUser();
  Future getGoogleLogin();
  Future getFacebookLogin();
  Future<String> getEmailPasswordLogin(String email, String password);
  Future<String> getToken();
}
