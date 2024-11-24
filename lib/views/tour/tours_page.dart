import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ToursPage extends StatefulWidget {
  @override
  _ToursPageState createState() => _ToursPageState();
}

class _ToursPageState extends State<ToursPage> {
  List tours = [];

  @override
  void initState() {
    super.initState();
    fetchTours();
  }

  Future<void> fetchTours() async {
    final response = await http.get(Uri.parse('https://example.com/api/tours'));
    if (response.statusCode == 200) {
      setState(() {
        tours = json.decode(response.body);
      });
    } else {
      // Handle error
      print('Failed to load tours');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tours')),
      body: ListView.builder(
        itemCount: tours.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tours[index]['name']),
            subtitle: Text(tours[index]['description']),
            onTap: () {
              Navigator.pushNamed(context, '/book-tour',
                  arguments: tours[index]);
            },
          );
        },
      ),
    );
  }
}
