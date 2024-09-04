import 'dart:convert';
import 'package:http/http.dart' as http;

class ProfileService {
  final String baseUrl;

  ProfileService(this.baseUrl);

  Future<Map<String, dynamic>> getProfile() async {
    final response = await http.get(Uri.parse('$baseUrl/profile'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load profile');
    }
  }

  Future<void> updateProfile(Map<String, dynamic> data) async {
    final response = await http.put(
      Uri.parse('$baseUrl/profile'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update profile');
    }
  }
}
