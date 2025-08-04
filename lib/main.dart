import 'package:e_commerce_app/views/pages/custom_bottom_navbar.dart';
import 'package:e_commerce_app/views/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'E-Commerce App',
      debugShowCheckedModeBanner: false,
      home: CustomBottomNavbar(),
    );
  }
}
