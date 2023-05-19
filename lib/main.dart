import 'package:flutter/material.dart';
import 'package:meta_mentality_app/providers/modules.dart';
import 'package:provider/provider.dart';

import 'presentation/pages/quiz_screen.dart';

void main() {
  runApp(const MetaMentalityApp());
}

class MetaMentalityApp extends StatelessWidget {
  const MetaMentalityApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Modules(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meta Mentality',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const QuizScreen(),
      ),
    );
  }
}