import 'package:flutter/material.dart';
import 'package:meta_mentality_app/views/courses/start_course_screen.dart';

import 'views/courses/about_course_screen.dart';

void main() {
  runApp(const MetaMentalityApp());
}

class MetaMentalityApp extends StatelessWidget {
  const MetaMentalityApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meta Mentality',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartCourseScreen(),
    );
  }
}