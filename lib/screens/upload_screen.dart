import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart'; // Import the BottomNavBar widget

class UploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Video'),
      ),
      body: Center(
        child: Text('Upload Video Screen'),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
