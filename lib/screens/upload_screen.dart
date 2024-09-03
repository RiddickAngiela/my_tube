import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../widgets/bottom_nav_bar.dart'; // Import the BottomNavBar widget

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final _titleController = TextEditingController();
  final _categoryController = TextEditingController();
  final _createdByController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _picker = ImagePicker();
  XFile? _videoFile;

  Future<void> _pickVideo() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _videoFile = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Video'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              _buildTextField(_titleController, 'Title'),
              const SizedBox(height: 16),
              _buildTextField(_categoryController, 'Category'),
              const SizedBox(height: 16),
              _buildTextField(_createdByController, 'Created By'),
              const SizedBox(height: 16),
              _buildTextField(_descriptionController, 'Description'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickVideo,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                ),
                child: const Text('Pick Video'),
              ),
              const SizedBox(height: 20),
              _videoFile != null
                  ? Text('Video Selected: ${_videoFile!.name}')
                  : const Text('No video selected'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // You can add upload functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                ),
                child: const Text('Upload Video'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        ),
      ),
    );
  }
}
