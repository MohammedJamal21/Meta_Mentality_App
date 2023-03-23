import 'package:flutter/material.dart';

class AboutCourseScreen extends StatelessWidget {
  const AboutCourseScreen({Key? key}) : super(key: key);

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
            child: const Text('Sign up for course'),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 100,
        leading: TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 16,
              color: Colors.black,
            ),
            label: const Text(
              'Back',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  const Placeholder(),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    left: 10,
                    child: Container(
                      color: Colors.red,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Find your WHY - How to win in the long run',
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Andreas bengtsson'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('STARTS'),
                      Text('Feb 2nd, 17:00'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('MODULES'),
                      Text('5'),
                    ],
                  ),
                  Container(
                    color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('ATTENDING'),
                        Container(
                          color: Colors.red,
                          width: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('+12'),
                              Stack(
                                alignment: Alignment.center,
                                clipBehavior: Clip.none,
                                children: const [
                                  CircleAvatar(
                                    radius: 8,
                                  ),
                                  Positioned(
                                    left: 8,
                                    child: CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.black,
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    child: CircleAvatar(
                                      radius: 8,
                                      backgroundColor: Colors.purple,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Can\'t attend? Remind me for the next starting date',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About the Course',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: const Text(
                  'Denna kurs syftar till att uppmuntra idrottare att reflektera över sina värderingar, det vill säga deras innersta önskningar om vem de vill vara, vad som är viktigt för dem och hur de vill bete sig. Framöver kommer du få mycket värdefull information, och lita på mig när jag säger att du bör ta din tid för att läsa detta. Du kommer inte ångra dig.'),
            ),
          ],
        ),
      ),
    );
  }
}
