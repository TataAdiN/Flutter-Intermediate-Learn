import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../providers/video_provider.dart';
import '../utils/utils.dart';
import '../widgets/buffer_slider_controller_widget.dart';
import '../widgets/video_controller_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  VideoPlayerController? controller;
  bool isVideoInitialize = false;

  @override
  void initState() {
    videoInitialize();
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void videoInitialize() async {
    final previousVideoController = controller;
    //final videoController = VideoPlayerController.asset("assets/butterfly.mp4",);
    final videoController = VideoPlayerController.networkUrl(Uri.parse(
        "https://github.com/dicodingacademy/assets/releases/download/release-video/VideoDicoding.mp4"));
    await previousVideoController?.dispose();
    try {
      await videoController.initialize();
    } on Exception catch (e) {
      print('Error initializing video: $e');
    }
    if (mounted) {
      setState(() {
        controller = videoController;
        isVideoInitialize = controller!.value.isInitialized;
      });
    }
    if (isVideoInitialize) {
      _listenPlayer();
    }
  }

  _listenPlayer() {
    final provider = context.read<VideoProvider>();
    controller?.addListener(() {
      provider.duration = controller?.value.duration ?? Duration.zero;
      provider.position = controller?.value.position ?? Duration.zero;
      provider.isPlay = controller?.value.isPlaying ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Player Project"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          isVideoInitialize
              ? AspectRatio(
                  aspectRatio: controller!.value.aspectRatio,
                  child: VideoPlayer(
                    controller!,
                  ),
                )
              : const CircularProgressIndicator(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Consumer<VideoProvider>(
                  builder: (context, provider, child) {
                    final duration = provider.duration;
                    final position = provider.position;

                    return BufferSliderControllerWidget(
                      maxValue: duration.inSeconds.toDouble(),
                      currentValue: position.inSeconds.toDouble(),
                      minText: durationToTimeString(position),
                      maxText: durationToTimeString(duration),
                      onChanged: (value) async {
                        final newPosition = Duration(seconds: value.toInt());
                        await controller?.seekTo(newPosition);
                        await controller?.play();
                      },
                    );
                  },
                ),
                Consumer<VideoProvider>(
                  builder: (context, provider, child) {
                    final isPlay = provider.isPlay;
                    return VideoControllerWidget(
                      onPlayTapped: () {
                        controller?.play();
                      },
                      onPauseTapped: () {
                        controller?.pause();
                      },
                      isPlay: isPlay,
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
