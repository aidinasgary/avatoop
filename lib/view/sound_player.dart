import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  late AudioPlayer _audioPlayer;
/*
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer.positionStream,
          _audioPlayer.bufferedPositionStream,
          _audioPlayer.durationStream,
          (position, bufferedPosition, duration) => PositionData(
             * position, bufferedPosition, duration ?? Duration.zero));
*/
  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset("assets/audio/Olsun_Hadise_320.mp3");
  }

  @override
  void dispose() {
    _audioPlayer.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<PositionData>(
              //  stream: _positionDataStream,
              builder: (context, snapshot) {
            final positionData = snapshot.data;
            return ProgressBar(
              barHeight: 8,
              baseBarColor: Colors.white,
              bufferedBarColor: Colors.grey,
              progressBarColor: Colors.red,
              thumbColor: Colors.red,
              timeLabelTextStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
              progress: positionData?.position ?? Duration.zero,
              buffered: positionData?.bufferedPosition ?? Duration.zero,
              total: positionData?.duration ?? Duration.zero,
              onSeek: _audioPlayer.seek,
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.skip_previous_rounded, color: Colors.white),
              Controll(
                audioPlayer: _audioPlayer,
              ),
              Icon(Icons.skip_next_rounded, color: Colors.white),
              SizedBox(),
              Icon(Icons.loop_rounded, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////
class PositionData {
  PositionData(this.position, this.bufferedPosition, this.duration);
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

////////////////////////////////////
class Controll extends StatelessWidget {
  const Controll({super.key, required this.audioPlayer});
  final AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
        stream: audioPlayer.playerStateStream,
        builder: (context, snapshot) {
          final playerState = snapshot.data;
          final processingState = playerState?.processingState;
          final playing = playerState?.playing;
          if (!(playing ?? false)) {
            return IconButton(
                onPressed: audioPlayer.play,
                iconSize: 80,
                color: Colors.white,
                icon: const Icon(Icons.play_arrow_rounded));
          } else if (processingState != ProcessingState.completed) {
            return IconButton(
                onPressed: audioPlayer.pause,
                iconSize: 80,
                color: Colors.white,
                icon: const Icon(Icons.pause_rounded));
          }
          return const Icon(
            Icons.play_arrow_rounded,
            size: 80,
            color: Colors.white,
          );
        });
  }
}
