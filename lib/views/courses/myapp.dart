import 'package:flutter/material.dart';
import 'package:meta_mentality_app/providers/modules.dart';
import 'package:provider/provider.dart';

import 'components/module_part_widget.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ScrollController _scrollController = ScrollController();

  /*@override
  void initState() {
    super.initState();

    _controller3.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(
            milliseconds: 1,
          ),
          curve: Curves.ease,
        );
      }
    });
  }*/

  Widget _buildButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      ElevatedButton(
        onPressed: () {
          Provider.of<Modules>(context, listen: false).changeVisibiltyAndSize();
        },
        child: const Text('1'),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              color: Colors.red,
              child: ElevatedButton(
                  onPressed: () {
                    Provider.of<Modules>(context, listen: false)
                        .changeVisibiltyAndSize();
                  },
                  child: const Text('Press')),
            ),
            //----------------------------------------------------
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (ctx, index) {
                  return ModulePartWidget(
                    partNo: (index + 1),
                  );
                }),
            // const ModulePartWidget(
            //   partNo: 1,
            // ),
            // //-----------------------------------------------------
            // const ModulePartWidget(
            //   partNo: 2,
            // )
          ],
        ),
      ),
    );
  }
}
