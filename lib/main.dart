import 'package:flutter/material.dart';
import 'package:meta_mentality_app/providers/modules.dart';
import 'package:meta_mentality_app/views/courses/myapp.dart';
import 'package:provider/provider.dart';

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
        title: 'Meta Mentality',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(builder: (context) {
          return const MyApp(
            title: 'Hama',
          );
        }),
      ),
    );
  }
}