import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to My-Tube!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'My-Tube is your one-stop destination for all things entertainment. Whether you love watching the latest videos, listening to music, catching up on podcasts, or following your favorite sports, we have you covered!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Features:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            BulletPoint(text: '🎥 Stream the latest videos'),
            BulletPoint(text: '🎶 Listen to your favorite music'),
            BulletPoint(text: '🎙️ Explore engaging podcasts'),
            BulletPoint(text: '⚽ Stay updated with sports news and events'),
            SizedBox(height: 16),
            Text(
              'Our Mission:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'To provide a seamless and enjoyable entertainment experience for users worldwide. We aim to keep you entertained and informed with high-quality content.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Contact Us:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'For any inquiries or feedback, feel free to reach out to us at:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              '📧 support@mytube.com',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            SizedBox(height: 16),
            Text(
              'Version: 1.0.0',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.circle, size: 8, color: Colors.black),
        const SizedBox(width: 8),
        Expanded(child: Text(text)),
      ],
    );
  }
}
