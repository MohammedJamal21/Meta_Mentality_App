import 'package:flutter/material.dart';

class IntroScreen5 extends StatelessWidget {
  const IntroScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ElevatedButton(
            child: const Text('123'),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (ctx) {
                    return SizedBox(height: 300, child: const Text('rfrfrf'));
                  });
            },
          ),
        ),
      ),
    );
  }
}
