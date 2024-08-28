import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscriptions'),
      ),
      body: Center(
        child: Text('Subscription Screen'),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
