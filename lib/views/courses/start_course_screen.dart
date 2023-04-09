import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class StartCourseScreen extends StatelessWidget {
  const StartCourseScreen({Key? key}) : super(key: key);

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
            child: const Text('Start Module 1'),
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
                      Text('Module 1 available now'),
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
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TimelineTile(
                    isFirst: true,
                    alignment: TimelineAlign.center,
                    endChild: Container(
                      constraints: const BoxConstraints(
                        minHeight: 40,
                      ),
                      color: Colors.transparent,
                    ),
                    startChild: Container(
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                        child: Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const CircleAvatar(
                                  child: Text('1'),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text('What is values?'),
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  left: 30,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  left: 20,
                                  child: CircleAvatar(
                                    radius: 8,
                                  ),
                                ),
                              ],
                            ),
                            //-----------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //-------------------------------------------------
                  TimelineTile(
                    alignment: TimelineAlign.center,
                    startChild: Container(
                      constraints: const BoxConstraints(
                        minHeight: 40,
                      ),
                      color: Colors.transparent,
                    ),
                    endChild: Container(
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const CircleAvatar(
                                  child: Text('1'),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text('What is values?'),
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  right: 40,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green,
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  right: 40,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.yellow,
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  right: 30,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  right: 20,
                                  child: CircleAvatar(
                                    radius: 8,
                                  ),
                                ),
                              ],
                            ),
                            //-----------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //---------------------------
                  TimelineTile(
                    indicatorStyle: const IndicatorStyle(
                      indicator: CircleAvatar(
                        child: Text('3'),
                      ),
                    ),
                    alignment: TimelineAlign.center,
                    endChild: Container(
                      constraints: const BoxConstraints(
                        minHeight: 40,
                      ),
                      color: Colors.transparent,
                    ),
                    startChild: Container(
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                        child: Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const CircleAvatar(
                                  child: Text('1'),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text('What is values?'),
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  left: 30,
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.red,
                                  ),
                                ),
                                const Positioned(
                                  bottom: -7.5,
                                  left: 20,
                                  child: CircleAvatar(
                                    radius: 8,
                                  ),
                                ),
                              ],
                            ),
                            //-----------
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //------ END OF SCREEN
          ],
        ),
      ),
    );
  }
}
