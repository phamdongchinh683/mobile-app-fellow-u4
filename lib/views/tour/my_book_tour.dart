import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/config/secure_storage.dart';
import 'package:http/http.dart' as http;

class MyBookTour extends StatefulWidget {
  const MyBookTour({Key? key}) : super(key: key);

  @override
  State<MyBookTour> createState() => _MyBookTourState();
}

class _MyBookTourState extends State<MyBookTour> {
  List<dynamic>? tours;
  bool isLoading = true;
  String errorMessage = '';

  Future<void> fetchTours() async {
    const apiUrl =
        'https://backend-tour-booking-node-js-mongodb.onrender.com/api/v1/auth/my-book-tour';
    setState(() {
      isLoading = true;
      errorMessage = '';
    });

    try {
      final token = await SecureStorageService().retrieveToken();
      if (token == null) throw Exception('Token not found');

      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {'token': token},
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        setState(() {
          tours = responseData['data'];
          isLoading = false;
        });
      } else {
        final error = jsonDecode(response.body)['message'];
        setState(() {
          errorMessage = error ?? 'Failed to load tours';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Error: $e';
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchTours();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tours'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
              ? Center(child: Text(errorMessage))
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView.builder(
                    itemCount: tours?.length ?? 0,
                    itemBuilder: (ctx, index) {
                      final tour = tours![index];
                      return TourCard(tour: tour);
                    },
                  ),
                ),
    );
  }
}

class TourCard extends StatelessWidget {
  final dynamic tour;
  const TourCard({required this.tour, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrls = tour['images'] as List<dynamic>;
    final city = tour['city'];
    final attractions = tour['attractions'];
    final priceAdult = tour['prices']['adult'];
    final priceChild = tour['prices']['child'];
    final days = tour['days'];

    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Images
            if (imageUrls.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrls[0],
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.location_on, size: 20),
                const SizedBox(width: 5),
                Text(city ?? 'City not available',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const Spacer(),
                Text('$days days',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Attractions: $attractions',
              style: const TextStyle(fontSize: 16),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.monetization_on, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      '\$${priceAdult ?? '0.00'} Adult',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.child_care, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      '\$${priceChild ?? '0.00'} Child',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('Navigate to booking for ${tour['city']}');
              },
              child: const Text('Book Now'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 40),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
