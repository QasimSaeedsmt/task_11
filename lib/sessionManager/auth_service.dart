import 'package:task_11/sessionManager/session_manager.dart';

class AuthService {
  void login(String username, String password) async {
    await SessionManager.saveLoggedIn(true);
    await SessionManager.saveUsername(username);
  }

  void logout() async {
    await SessionManager.saveLoggedIn(false);
    await SessionManager.clearSession();
  }
}
