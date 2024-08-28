import 'package:http/http.dart' as http;
import 'dart:convert';

class EmailService {
  final String userId = 'EefArJOJCkuzm1hh7'; // Replace with your EmailJS User ID
  final String serviceId =
      'service_jx5ojm4'; // Replace with your EmailJS Service ID
  final String templateId =
      'template_207gzf3'; // Replace with your EmailJS Template ID

  Future<void> sendEmail(String toEmail, String subject, String message) async {
    final url = 'https://api.emailjs.com/api/v1.0/email/send';

    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer $userId', // Note: EmailJS uses the Authorization header for API calls
      },
      body: jsonEncode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'to_email': toEmail,
          'subject': subject,
          'message': message,
        },
      }),
    );

    if (response.statusCode == 200) {
      print('Email sent successfully');
    } else {
      print('Failed to send email: ${response.body}');
    }
  }
}
