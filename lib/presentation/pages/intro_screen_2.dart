import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              child: const Text('Sign up for course'),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Let\'s get started',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'This process will take approximately XX minutes. ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TimelineTile(
              axis: TimelineAxis.vertical,
              alignment: TimelineAlign.start,
              isFirst: true,
              endChild: Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(
                  minWidth: 120,
                  minHeight: 120,
                ),
                color: Colors.lightGreenAccent,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    Text(
                      'Basic mapping',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Positioned(
                      top: 28,
                      child: Text('Tell us what you want to learn'),
                    ),
                  ],
                ),
              ),
            ),
            TimelineTile(
              axis: TimelineAxis.vertical,
              alignment: TimelineAlign.start,
              endChild: Container(
                alignment: Alignment.centerLeft,
                constraints: const BoxConstraints(
                  minWidth: 120,
                  minHeight: 120,
                ),
                color: Colors.lightGreenAccent,
                child: const Text('efifjiej'),
              ),
            ),
            TimelineTile(
              axis: TimelineAxis.vertical,
              alignment: TimelineAlign.start,
              endChild: Container(
                constraints: const BoxConstraints(
                  minWidth: 120,
                  minHeight: 100,
                ),
                color: Colors.lightGreenAccent,
                child: const Text('efifjiej'),
              ),
            ),
            TimelineTile(
              axis: TimelineAxis.vertical,
              alignment: TimelineAlign.start,
              endChild: Container(
                constraints: const BoxConstraints(
                  minWidth: 120,
                  minHeight: 100,
                ),
                color: Colors.lightGreenAccent,
                child: const Text('efifjiej'),
              ),
            ),
            TimelineTile(
              axis: TimelineAxis.vertical,
              alignment: TimelineAlign.start,
              endChild: Container(
                constraints: const BoxConstraints(
                  minWidth: 120,
                  minHeight: 100,
                ),
                color: Colors.lightGreenAccent,
                child: const Text('efifjiej'),
              ),
            ),
            TimelineTile(
              isLast: true,
              axis: TimelineAxis.vertical,
              alignment: TimelineAlign.start,
              endChild: Container(
                constraints: const BoxConstraints(
                  minWidth: 120,
                  minHeight: 100,
                ),
                color: Colors.lightGreenAccent,
                child: const Text('efifjiej'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
