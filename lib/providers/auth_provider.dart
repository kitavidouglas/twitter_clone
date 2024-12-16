import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appwrite/appwrite.dart';
import '../models/user.dart';

final authProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  final Client _client = Client();
  final Account _account;

  AuthService() : _account = Account(_client);

  Future<UserModel?> login(String email, String password) async {
    try {
      final session = await _account.createSession(email: email, password: password);
      final user = await _account.get();
      return UserModel.fromMap(user.toMap());
    } catch (e) {
      print('Login failed: $e');
      return null;
    }
  }
}
