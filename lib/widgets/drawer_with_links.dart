import 'package:flutter/material.dart';
import 'package:my_tube/screens/about_screen.dart'; // Ensure this import matches your file structure
import 'package:my_tube/screens/contact_screen.dart';
import 'package:my_tube/screens/music_screen.dart';
import 'package:my_tube/screens/podcast_screen.dart';
import 'package:my_tube/screens/sports_screen.dart';
import 'package:my_tube/screens/trending_screen.dart';

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
                _buildLink(context, 'About', Icons.info,
                    const AboutPage()), // Use AboutPage here
                _buildLink(
                    context, 'Contact', Icons.contact_mail, ContactScreen()),
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
}
