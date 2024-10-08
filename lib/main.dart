import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/home/tab_view_introduce.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Fellow4U';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: ThemeData(
            textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: const Color(0xFFF5F5F5)),
        )),
        home: const TabViewIntroduce());
  }
}
