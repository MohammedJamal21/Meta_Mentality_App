import 'package:flutter/material.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Wrap(
            spacing: 10,
            children: [
              Chip(
                  labelPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  label: Row(mainAxisSize: MainAxisSize.min, children: [
                    const Text('Hama'),
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                    ),
                  ])),
              const Chip(label: Text('Hama')),
              const Chip(label: Text('Hama')),
              const Chip(label: Text('Hdijeijdiejdijdeijidjieama')),
            ],
          ),
        ),
      ),
    );
  }
}
