import 'package:flutter/material.dart';
import '../widgets/video_card.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/nav_bar.dart';
import '../widgets/drawer_with_links.dart'; // Import the new drawer widget

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(), // Use the NavBar without the title parameter
      drawer: DrawerWithLinks(), // Replace the old drawer with the new one
      body: ListView(
        children: <Widget>[
          VideoCard(
            // Example video data
            title: 'Sample Video',
            description: 'This is a sample description',
            profileName: 'User Profile',
            timeCreated: DateTime.now(),
            views: 100,
            comments: 10,
          ),
          // Add more VideoCard widgets here
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
