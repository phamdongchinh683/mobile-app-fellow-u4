import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/config/secure_storage.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Map<String, dynamic>? profileData;
  bool isLoading = true;
  String errorMessage = '';

  Future<void> fetchProfileData() async {
    const apiUrl =
        'https://backend-tour-booking-node-js-mongodb.onrender.com/api/v1/auth/profile';

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
          profileData = responseData['data'];
          isLoading = false;
        });
      } else {
        final error = jsonDecode(response.body)['message'];
        setState(() {
          errorMessage = error ?? 'Failed to load profile data';
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

  Future<void> logout() async {
    await SecureStorageService().deleteToken();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  void initState() {
    super.initState();
    fetchProfileData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: logout,
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : errorMessage.isNotEmpty
              ? Center(child: Text(errorMessage))
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.blue,
                          child: Text(
                            profileData!['fullName']['firstName'][0] +
                                profileData!['fullName']['lastName'][0],
                            style: const TextStyle(
                                fontSize: 40, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name: ${profileData!['fullName']['firstName']} ${profileData!['fullName']['lastName']}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.cake),
                                  const SizedBox(width: 10),
                                  Text('Age: ${profileData!['age']}'),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  const SizedBox(width: 10),
                                  Text('City: ${profileData!['city']}'),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.email),
                                  const SizedBox(width: 10),
                                  Text(
                                      'Email: ${profileData!['contact']['email']}'),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(Icons.phone),
                                  const SizedBox(width: 10),
                                  Text(
                                      'Phone: ${profileData!['contact']['phone']}'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Logout Button
                      ElevatedButton(
                        onPressed: logout,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          'Logout',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
