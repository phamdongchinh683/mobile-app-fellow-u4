import 'package:flutter/material.dart';

class AddExperience extends StatelessWidget {
  const AddExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Experience'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'DONE',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 16,
              ),
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Experience's Name",
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Location',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Location of Experience',
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt, color: Colors.teal),
                label: const Text(
                  'Upload Photos',
                  style: TextStyle(color: Colors.teal),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.teal),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
