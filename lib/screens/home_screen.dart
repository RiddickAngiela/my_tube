import 'package:flutter/material.dart';
import '../widgets/video_card.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/nav_bar.dart';
import '../widgets/drawer_with_links.dart'; // Import the new drawer widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(), // Use the NavBar without the title parameter
      drawer:
          const DrawerWithLinks(), // Replace the old drawer with the new one
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Category Buttons
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CategoryButton(title: 'All'),
                  CategoryButton(title: 'Music'),
                  CategoryButton(title: 'Sports'),
                  CategoryButton(title: 'Podcast'),
                  CategoryButton(title: 'Mixes'),
                  CategoryButton(title: 'Live'),
                  CategoryButton(title: 'Mixtapes'),
                  CategoryButton(title: 'Playlists'),
                  CategoryButton(title: 'Dancehall'),
                  CategoryButton(title: 'Comedy'),
                ],
              ),
            ),
          ),

          // Video Cards
          Expanded(
            child: ListView(
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // Add functionality to filter or navigate based on the category
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        child: Text(title),
      ),
    );
  }
}
