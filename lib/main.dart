import 'package:cloudinary_flutter/cloudinary_context.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/auth/login_page.dart';
import 'package:flutter_mobile_app/views/auth/profile_page.dart';
import 'package:flutter_mobile_app/views/auth/signup_page.dart';
import 'package:flutter_mobile_app/views/tour/book_tour_page.dart';
import 'package:flutter_mobile_app/views/tour/tours_page.dart';

void main() {
  CloudinaryContext.cloudinary =
      Cloudinary.fromCloudName(cloudName: 'dybpeirtu');
  CloudinaryContext.cloudinary.config.urlConfig.secure = true;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/book-tour': (context) => const BookTourPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
