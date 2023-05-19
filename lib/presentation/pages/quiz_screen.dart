import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(24),
              backgroundColor: const Color(0xFF303742),
            ),
            onPressed: () {},
            child: const Text('End'),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Question 1/3'),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
        ],
        leading: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            label: const Text('Back')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Hur kan tydliga värderingar hjälpa idrottare att hantera motgångar?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.fromLTRB(
                10,
                15,
                10,
                15,
              ),
              value: false,
              groupValue: null,
              onChanged: null,
              title: const Text('För att de kan skylla på andra för'),
              tileColor: const Color(0xffE0E0E0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.fromLTRB(
                10,
                15,
                10,
                15,
              ),
              value: false,
              groupValue: null,
              onChanged: null,
              title: const Text(
                  'För att de kan byta sport om de inte lyckas i den nuvarande'),
              tileColor: const Color(0xffE0E0E0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.fromLTRB(
                10,
                15,
                10,
                15,
              ),
              value: false,
              groupValue: null,
              onChanged: null,
              title: const Text(
                  'Det hjälper idrottare att ta bortderas prestationsångest'),
              tileColor: const Color(0xffE0E0E0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.fromLTRB(
                10,
                15,
                10,
                15,
              ),
              value: false,
              groupValue: null,
              onChanged: null,
              title: const Text(
                  'Idrottaren får en större acceptans gentemot misstag och misslyckanden'),
              tileColor: const Color(0xffE0E0E0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
