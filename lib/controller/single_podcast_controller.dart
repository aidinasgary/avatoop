/*import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';

import 'package:untitled16/controller/audio_player_api.dart';

import '../constant/api_const.dart';
import 'dioservice.dart';

class SinglePodcastController extends GetxController {
  var id;

  SinglePodcastController({this.id});

  RxBool loading = false.obs;
  RxList<AudioPlayerModel> podcastFileList = RxList();
  final player = AudioPlayer();
  late ConcatenatingAudioSource playList;
  RxBool playState = false.obs;
  RxBool isLoopAll = false.obs;
  RxInt currentFileIndex = 0.obs;

  @override
  onInit() async {
    super.onInit();
    playList = ConcatenatingAudioSource(useLazyPreparation: true, children: []);

    await getPodcastFiles();
    await player.setAudioSource(playList,
        initialIndex: 0, initialPosition: Duration.zero);
  }

  getPodcastFiles() async {
    loading.value = true;

    var response =
        await DioService().getMethod(ApiUrlConstant.podcastFiles + id);

    if (response.statusCode == 200) {
      for (var element in response.data["files"]) {
        var podcastFileModel = AudioPlayerModel.fromJson(element);
        podcastFileList.add(podcastFileModel);
        playList.add(AudioSource.uri(Uri.parse(podcastFileModel.file!)));
      }
      loading.value = false;
    }
  }

  int? duration;
  RxInt selectedIndex = 0.obs;
  Rx<Duration> progressState = const Duration(seconds: 0).obs;
  Rx<Duration> totalDuration = const Duration(seconds: 0).obs;
  Rx<Duration> bufferState = const Duration(seconds: 0).obs;
  Timer? timer;
  startProgress() {
    const tick = Duration(seconds: 1);
    switch (player.duration) {
      case null:
        duration = 0;
        break;
      default:
        duration = player.duration!.inSeconds;
        break;
    }

    if (timer != null) {
      if (timer!.isActive) {
        timer!.cancel();
        timer = null;
      }
    }
    timer = Timer.periodic(tick, (timer) {
      if (player.position.inSeconds == duration) {
        timer.cancel();
      }
      if (player.playing) {
        progressState.value = player.position;

        bufferState.value = player.bufferedPosition;
      //  debugPrint('TIMER :: ${progressState.value}');
      }
    });
  }

  

  setLoopMode() {
    if (isLoopAll.value) {
      isLoopAll.value = false;
      player.setLoopMode(LoopMode.off);
    } else {
      isLoopAll.value = true;
      player.setLoopMode(LoopMode.all);
    }
  }
}
*/