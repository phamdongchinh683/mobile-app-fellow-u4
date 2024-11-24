import 'package:flutter/material.dart';

class BookTourPage extends StatelessWidget {
  const BookTourPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tour = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: const Text('Book Tour')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('profile'),
            ),
            Text('Tour: ${tour['name']}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Description: ${tour['description']}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tour booked!')));
              },
              child: const Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
