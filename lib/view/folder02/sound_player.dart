import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({super.key});

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  late AudioPlayer _audioPlayer;

  final _playlist = ConcatenatingAudioSource(children: [
    AudioSource.uri(Uri.parse('assets:///assets/audio/Olsun_Hadise_320.mp3'),
        tag: MediaItem(
            id: '0',
            title: 'Nature Sounds',
            artist: 'Public Domain',
            artUri:
                Uri.parse('https://soundcloud.com/lakeyinspired/warm-nights'))),
    AudioSource.uri(Uri.parse('assets:///assets/audio/Aklin-Yolu.mp3'),
        tag: MediaItem(
            id: '0',
            title: 'Nature Sounds',
            artist: 'Public Domain',
            artUri:
                Uri.parse('https://soundcloud.com/lakeyinspired/warm-nights'))),
    AudioSource.uri(
        Uri.parse('assets:///assets/audio/Anita - Kafie Bekhaam [320].mp3'),
        tag: MediaItem(
            id: '0',
            title: 'Nature Sounds',
            artist: 'Public Domain',
            artUri:
                Uri.parse('https://soundcloud.com/lakeyinspired/warm-nights'))),
    AudioSource.uri(
        Uri.parse(
            'assets:///assets/RYYZN_-_Waiting_on_You_[Copyright_Free](256k).mp3'),
        tag: MediaItem(
            id: '0',
            title: 'Nature Sounds',
            artist: 'Public Domain',
            artUri:
                Uri.parse('https://soundcloud.com/lakeyinspired/warm-nights'))),
  ]);

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer.positionStream,
          _audioPlayer.bufferedPositionStream,
          _audioPlayer.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));

  @override
  void initState() {
    super.initState();
    _init();
    // _audioPlayer = AudioPlayer()..setAsset("assets/audio/Olsun_Hadise_320.mp3");
  }

  Future<void> _init() async {
    await _audioPlayer.setLoopMode(LoopMode.all);
    // if i have a list that i have not now
    await _audioPlayer.setAudioSource(_playlist);
  }

  @override
  void dispose() {
    _audioPlayer.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_rounded)),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ]),
        backgroundColor: Colors.purple,
        body: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF144771), Color(0xFF071A2C)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<SequenceState?>(
                stream: _audioPlayer.sequenceStateStream,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  if (state?.sequence.isEmpty ?? true) {
                    return const SizedBox();
                  }
                  final metadata = state!.currentSource!.tag as MediaItem;
                  return MediaMetadata(
                    imageUrl: metadata.artUri.toString(),
                    title: metadata.title,
                    artist: metadata.artist ?? '',
                  );
                },
              ),
              const SizedBox(height: 20),
              StreamBuilder<PositionData>(
                  stream: _positionDataStream,
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
              Controll(
                audioPlayer: _audioPlayer,
              ),
            ],
          ),
        ));
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

class MediaMetadata extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String artist;

  const MediaMetadata(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.artist});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}

////////////////////////////////////
class Controll extends StatelessWidget {
  const Controll({super.key, required this.audioPlayer});
  final AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: audioPlayer.seekToPrevious,
            iconSize: 60,
            color: Colors.white,
            icon: const Icon(Icons.skip_previous_rounded)),
        StreamBuilder<PlayerState>(
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
            }),
        IconButton(
            onPressed: audioPlayer.seekToNext,
            iconSize: 60,
            color: Colors.white,
            icon: const Icon(Icons.skip_next_rounded))
      ],
    );
  }
}
