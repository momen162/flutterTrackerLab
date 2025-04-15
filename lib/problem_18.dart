import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Problem_18(),
  ));
}

class Problem_18 extends StatefulWidget {
  const Problem_18({super.key});

  @override
  State<Problem_18> createState() => _Problem_18State();
}

class _Problem_18State extends State<Problem_18> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _imageFile = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_18: Profile Page'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage:
                  _imageFile != null ? FileImage(_imageFile!) : null,
              child: _imageFile == null
                  ? const Icon(Icons.person, size: 70, color: Colors.white)
                  : null,
              backgroundColor: Colors.grey.shade400,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _pickImage,
              icon: const Icon(Icons.photo),
              label: const Text('Choose Image'),
            ),
          ],
        ),
      ),
    );
  }
}
