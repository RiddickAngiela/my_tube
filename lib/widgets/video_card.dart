import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;
  final String description;
  final String profileName;
  final DateTime timeCreated;
  final int views;
  final int comments;

  const VideoCard({super.key, 
    required this.title,
    required this.description,
    required this.profileName,
    required this.timeCreated,
    required this.views,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: Text(title),
            subtitle: Text('By $profileName • ${timeCreated.toLocal()}'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('$views Views'),
                Text('$comments Comments'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Subscribe'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
