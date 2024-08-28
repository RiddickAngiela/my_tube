import 'package:flutter/material.dart';
import 'package:my_tube/models/video.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'lib/assets/rongrende.JPG'), // Replace with your profile picture asset path
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt, color: Colors.blue),
                      onPressed: () {
                        // Add functionality to upload a new profile picture here
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'John Doe', // Replace with the user's name
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                'johndoe@example.com', // Replace with the user's email
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text(
                  '+1 234 567 890'), // Replace with the user's phone number
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address'),
              subtitle: Text(
                  '123 Main Street, Anytown, USA'), // Replace with the user's address
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Date of Birth'),
              subtitle: Text(
                  'January 1, 1990'), // Replace with the user's date of birth
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Add edit profile functionality here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfileScreen()),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Phone',
                hintText: 'Enter your phone number',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                hintText: 'Enter your address',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                hintText: 'Enter your date of birth',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add save functionality here
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}



