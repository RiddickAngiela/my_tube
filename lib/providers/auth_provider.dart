import 'package:flutter/material.dart';
import '../models/api_service.dart'; // Import the API service class

class AuthProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  bool _isLoading = false;
  String? _errorMessage;
  String? _token;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  String? get token => _token;

  bool get isAuthenticated => _token != null;

  Future<void> register(String name, String email, String password) async {
    _isLoading = true;
    _errorMessage = null; // Reset error message before making the request
    notifyListeners();

    try {
      await _apiService.registerUser(name, email, password);
      // If registration is successful, clear the error message
      _errorMessage = null;
    } catch (error) {
      // Handle the error and set the error message
      _errorMessage = error.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> login(String email, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final response = await _apiService.loginUser(email, password);
      if (response.containsKey('token')) {
        setToken(response['token']);
        _errorMessage = null;
      } else {
        _errorMessage = 'Login failed';
      }
    } catch (error) {
      _errorMessage = error.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void setToken(String token) {
    _token = token;
    notifyListeners();
  }

  void logout() {
    _token = null;
    notifyListeners();
  }
}
