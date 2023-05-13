import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ModuleScreen extends StatefulWidget {
  const ModuleScreen({Key? key}) : super(key: key);

  @override
  State<ModuleScreen> createState() => _ModuleScreenState();
}

class _ModuleScreenState extends State<ModuleScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    )..addListener(() {
        return setState(() {});
      });

    _initializeVideoPlayerFuture =
        _controller.initialize().then((_) => _controller.play());
  }

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //----- COLUMN
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Header for the first module',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text('PART 1 OF 12'),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Colors.black,
                    )),
                  ],
                ),
              ),
              FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // If the VideoPlayerController has finished initialization, use
                    // the data it provides to limit the aspect ratio of the video.
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              // If the video is playing, pause it.
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                              } else {
                                // If the video is paused, play it.
                                _controller.play();
                              }
                            });
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              AspectRatio(
                                aspectRatio: _controller.value.aspectRatio,
                                // Use the VideoPlayer widget to display the video.
                                child: VideoPlayer(_controller),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: VideoProgressIndicator(
                                  _controller,
                                  allowScrubbing: true,
                                ),
                              ),
                              Positioned(
                                child: _controller.value.isPlaying
                                    ? Container()
                                    : const Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    // If the VideoPlayerController is still initializing, show a
                    // loading spinner.
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              Text((_controller.value.duration - _controller.value.position)
                  .inSeconds
                  .toString()),

              ElevatedButton.icon(
                onPressed: () async {
                  await _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    duration: const Duration(
                      milliseconds: 1000,
                    ),
                    curve: Curves.ease,
                  );

                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                label: const Text('Continue'),
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              /*AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText(
                    'AWESOME',
                    rotateOut: false,
                    duration: const Duration(
                      seconds: 3,
                    ),
                  ),
                ],
                isRepeatingAnimation: false,
                totalRepeatCount: 1,
                repeatForever: false,
              ),*/

              Visibility(
                visible: isVisible,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 80,
                    color: Colors.amber,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        'AWESOdeduhuedhuhduhuehduhueduhduhudheduuedhudhujjifjifjijefijefjijfijefifjidedededededededededededededddedededjefijfijefijefijfijfijefijeijfijefiejfijeiefjifjeijfijefiefjifjiefjfiehueME',
                        rotateOut: false,
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                      ),
                    ],
                    isRepeatingAnimation: false,
                    totalRepeatCount: 1,
                    repeatForever: false,
                  ),
                ),
              ),

              //-------------- END OF COLUMN
            ],
          ),
        ),
      ),
    );
  }
}
