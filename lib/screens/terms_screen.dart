import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Effective date: January 1, 2024',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 16),
              Text(
                'Your privacy is important to us. This Privacy Policy explains how we collect, use, and share information about you when you use our application.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '1. Information We Collect',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'We may collect the following types of information:\n'
                '- Personal Information: Name, email address, etc.\n'
                '- Usage Data: Information about how you use our app.\n'
                '- Device Information: Information about your device, including IP address, operating system, and browser type.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '2. How We Use Your Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'We use the information we collect for various purposes, including:\n'
                '- To provide and maintain our application.\n'
                '- To notify you about changes to our application.\n'
                '- To allow you to participate in interactive features of our application when you choose to do so.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '3. Data Retention',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'We will retain your personal information for as long as your account is active or as needed to provide you with our application. If you wish to cancel your account or request that we no longer use your information, please contact us at support@myapp.com.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '4. Your Rights',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'You have certain rights regarding your personal information, including the right to access, correct, or delete your information. If you have any questions or concerns about our Privacy Policy or your rights, please contact us at support@myapp.com.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                '5. Changes to This Privacy Policy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy in the application. You are advised to review this Privacy Policy periodically for any changes.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
