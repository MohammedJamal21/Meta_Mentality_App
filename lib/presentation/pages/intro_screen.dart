import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  List<Widget> _Widgets(BuildContext context) {
    List<Widget> hama = [1, 2, 3, 4, 5].asMap().entries.map((entry) {
      return Expanded(
        child: Container(
          height: 8.0,
          margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
            color: (Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black)
                .withOpacity(_current == entry.key ? 0.9 : 0.4),
          ),
        ),
      );
    }).toList();

    List<Widget> widgetsWithSpacing = [];

    for (int i = 0; i < hama.length; i++) {
      widgetsWithSpacing.add(hama[i]);

      // Add SizedBox between containers (except for the last one)
      if (i != hama.length - 1) {
        widgetsWithSpacing.add(
          const SizedBox(width: 10),
        );
      }
    }

    return widgetsWithSpacing;
  }

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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Welcome to \nMeta Mentality',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                      print(_current);
                    },
                    height: MediaQuery.of(context).size.height * 0.6,
                    viewportFraction: 1,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 400,
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            //borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'text $i',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _Widgets(context),
            ),
            const Text(
              'Here you will learn overcoming mental challenges with evidence based methods.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
