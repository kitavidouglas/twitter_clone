import 'package:appwrite/appwrite.dart';

class AuthService {
  final Client _client = Client();
  final Account _account;

  AuthService() : _account = Account(_client);

  Future<void> logout() async {
    await _account.deleteSession(sessionId: 'current');
  }
}
