import 'package:flutter/material.dart';
import 'package:my_tube/screens/about_screen.dart'; // Ensure this import matches your file structure
import 'package:my_tube/screens/contact_screen.dart';
import 'package:my_tube/screens/music_screen.dart';
import 'package:my_tube/screens/podcast_screen.dart';
import 'package:my_tube/screens/sports_screen.dart';
import 'package:my_tube/screens/trending_screen.dart';
import 'package:my_tube/screens/terms_screen.dart'; // Import the TermsScreen
import 'package:my_tube/screens/login_screen.dart'; // Import your LoginScreen

class DrawerWithLinks extends StatelessWidget {
  const DrawerWithLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Drawer header
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              children: [
                Icon(Icons.menu, size: 36, color: Colors.white),
                SizedBox(width: 16),
                Text(
                  'Menu',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Scrollable list of links
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero, // Remove default padding
              children: <Widget>[
                _buildLink(
                    context, 'Trending', Icons.trending_up, TrendingScreen()),
                _buildLink(context, 'Music', Icons.music_note, MusicScreen()),
                _buildLink(
                    context, 'Sports', Icons.sports_soccer, SportsScreen()),
                _buildLink(context, 'Podcast', Icons.radio, PodcastScreen()),
                _buildLink(context, 'About', Icons.info, const AboutPage()),
                _buildLink(context, 'Contact', Icons.contact_mail,
                    const ContactScreen()),
                const Divider(), // Add a divider before the logout option
                _buildLogoutLink(context), // Add the logout link
              ],
            ),
          ),
          // Privacy Policy and Terms of Service link
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  // Navigate to Privacy Policy and Terms of Service page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermsScreen()),
                  );
                },
                child: const Text(
                  'Privacy Policy. Terms of Service',
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLink(
      BuildContext context, String label, IconData icon, Widget page) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }

  Widget _buildLogoutLink(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.logout, color: Colors.blue),
      title: const Text(
        'Logout',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: () {
        // Handle the logout process here
        // Navigate to the login screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
    );
  }
}
