import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../widgets/audio_controller_widget.dart';
import '../widgets/buffer_slider_controller_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final AudioPlayer audioPlayer;
  late final Source audioSource;

  @override
  void initState() {
    audioPlayer = AudioPlayer();
    audioSource = AssetSource("cricket.wav");
    audioPlayer.setSource(audioSource);
    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Player Project"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BufferSliderControllerWidget(
            maxValue: 5,
            currentValue: 1,
            minText: "Current Duration",
            maxText: "Maximum Duration",
            onChanged: (value) async {},
          ),
          AudioControllerWidget(
            onPlayTapped: () {},
            onPauseTapped: () {},
            onStopTapped: () {},
            isPlay: false,
          ),
        ],
      ),
    );
  }
}
