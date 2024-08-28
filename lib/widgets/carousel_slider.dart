import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CategoryCarousel extends StatelessWidget {
  final List<String> categories = [
    'All',
    'Music',
    'Sports',
    'Podcast',
    'Mixes',
    'Live',
    'Mixtapes',
    'Playlists',
    'Dancehall',
    'Comedy',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 50.0, // Adjust the height as needed
        enableInfiniteScroll: false,
        viewportFraction: 0.3, // Adjust this to control the spacing
      ),
      items: categories.map((category) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                child: Text(
                  category,
                  style: const TextStyle(fontSize: 14.0),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
