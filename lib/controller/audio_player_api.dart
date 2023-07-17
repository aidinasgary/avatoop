// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:get/get.dart';
import 'package:untitled16/constant/api_const.dart';
import 'package:untitled16/controller/dioservice.dart';

class AudioPlayerModel {
  String? id;
  String? podcastId;
  String? title;
  String? file;
  String? lenght;

  AudioPlayerModel();

  AudioPlayerModel.fromJson(Map<String, dynamic> element) {
    id = element["id"];
    podcastId = element["podcast_id"];
    file = element["file"];
    title = element["title"];
    lenght = element["lenght"];
  }
}

class SingleAudioControllr extends GetxController {
  var id;
  SingleAudioControllr({this.id});

  RxBool loading = false.obs;
  Rx<AudioPlayerModel> audioPlayerModel = AudioPlayerModel().obs;
  RxList<AudioPlayerModel> audioPlayerList = RxList();

  @override
  onInit() {
    super.onInit();
    getAudioFile();
  }

  getAudioFile() async {
    loading.value = true;

    var response =
        await DioService().getMethod(ApiUrlConstant.podcastFiles + id);
    if (response.stateCode == 200) {
      for (var element in response.data['files']) {
        audioPlayerList.add(AudioPlayerModel.fromJson(element));
        loading.value = false;
      }
    }
  }
}
