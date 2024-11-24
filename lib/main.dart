import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/auth/login_page.dart';
import 'package:flutter_mobile_app/views/auth/profile_page.dart';
import 'package:flutter_mobile_app/views/auth/signup_page.dart';
import 'package:flutter_mobile_app/views/tour/book_tour_page.dart';
import 'package:flutter_mobile_app/views/tour/tours_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tour Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/tours': (context) => ToursPage(),
        '/book-tour': (context) => BookTourPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
