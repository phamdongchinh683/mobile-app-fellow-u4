import 'package:flutter/material.dart';

class BookTourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tour = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text('Book Tour')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tour: ${tour['name']}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description: ${tour['description']}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Tour booked!')));
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
