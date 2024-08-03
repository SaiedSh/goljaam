import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool _isLoading = true;
  late String _token;

  bool get isAuthenticated => _isAuthenticated;
  bool get isLoading => _isLoading;
  String get token => _token;

  AuthProvider() {
    _checkToken();
  }

  Future<void> _checkToken() async {
    final prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('accessToken') ?? '';
    if (_token.isNotEmpty) {
      // Check if token is valid (call API or decode token)
      _isAuthenticated = true;
      print(_token); // Assume token is valid
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> login(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', token);
    _token = token;
    _isAuthenticated = true;
    notifyListeners();
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    _token = '';
    _isAuthenticated = false;
    notifyListeners();
  }
}
