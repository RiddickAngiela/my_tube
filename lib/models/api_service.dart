import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl =
      'http://192.168.56.1:8080'; // Replace with your backend URL

  Future<Map<String, dynamic>> registerUser(
      String name, String email, String password) async {
    final url = Uri.parse('$baseUrl/auth/register');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to register user');
    }
  }

  Future<Map<String, dynamic>> loginUser(String email, String password) async {
    final url = Uri.parse('$baseUrl/auth/login');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }
}
