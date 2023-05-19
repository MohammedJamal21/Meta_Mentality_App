import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/modules.dart';

class ModulePartWidget extends StatefulWidget {
  final int partNo;
  //final bool visible;
  //final bool maintainSize;

  const ModulePartWidget({
    Key? key,
    required this.partNo,
  }) : super(key: key);

  @override
  State<ModulePartWidget> createState() => _ModulePartWidgetState();
}

class _ModulePartWidgetState extends State<ModulePartWidget>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 2500),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0.0, 1.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  ));

  late final Animation<double> _opacityAnimation = Tween<double>(
    begin: 0.0,
    end: 1.0,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  ));

  late final AnimationController _controller2 = AnimationController(
    duration: const Duration(milliseconds: 2500),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation2 = Tween<Offset>(
    begin: const Offset(0.0, 1.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeInOut,
  ));

  late final Animation<double> _opacityAnimation2 = Tween<double>(
    begin: 0.0,
    end: 1.0,
  ).animate(CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeInOut,
  ));

  late final AnimationController _controller3 = AnimationController(
    duration: const Duration(milliseconds: 3000),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation3 = Tween<Offset>(
    begin: const Offset(0.0, 1.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller3,
    curve: Curves.easeInOut,
  ));
  late final Animation<double> _opacityAnimation3 = Tween<double>(
    begin: 0.0,
    end: 1.0,
  ).animate(CurvedAnimation(
    parent: _controller3,
    curve: Curves.easeInOut,
  ));

  Widget _buildButton2(
    Animation<Offset> ani1,
    Animation<double> ani2,
    String text,
  ) {
    return SlideTransition(
      position: ani1,
      child: FadeTransition(
        opacity: ani2,
        child: ElevatedButton(
          onPressed: () {
            Provider.of<Modules>(context, listen: false)
                .changeVisibiltyAndSize();
          },
          child: Text(text),
        ),
      ),
    );
  }

  Widget _buildAnimatedText(
      Animation<Offset> ani1, Animation<double> ani2, String text) {
    return SlideTransition(
      position: ani1,
      child: FadeTransition(
        opacity: ani2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }

  Widget buildDivider(
      Animation<Offset> ani1, Animation<double> ani2, String text) {
    return SlideTransition(
      position: ani1,
      child: FadeTransition(
        opacity: ani2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(text),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                  child: Divider(
                thickness: 2,
                color: Colors.black,
              )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();

    super.dispose();
  }

  // void _addNewItem() {
  //   setState(() {
  //     visibility = true;
  //     size = true;

  //
  //   });
  //   /*_scrollController.animateTo(
  //     _scrollController.position.maxScrollExtent,
  //     duration: const Duration(
  //       milliseconds: 100,
  //     ),
  //     curve: Curves.ease,
  //   );*/
  // }

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<Modules>(context);
    bool value = myProvider.mymap[widget.partNo]['visible'];
    String desc = myProvider.mymap[widget.partNo]['description'];

    print('$value');

    if (value && flag) {
      _controller.forward(from: 0.0);
      _controller2.forward(from: 0.0);
      _controller3.forward(from: 0.0);

      flag = false;
    }

    return Visibility(
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      visible: value,
      child: Container(
        child: Column(
          children: [
            buildDivider(
                _offsetAnimation, _opacityAnimation, 'Part ${widget.partNo}'),
            _buildAnimatedText(_offsetAnimation2, _opacityAnimation, desc),
            _buildButton2(_offsetAnimation3, _opacityAnimation3, 'Continue'),
          ],
        ),
      ),
    );
  }
}
