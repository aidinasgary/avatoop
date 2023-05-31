import 'package:get/get.dart';
import 'package:untitled16/models/dioservice.dart';
import 'package:untitled16/models/url.dart';

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

  getAudioFile() async {
    loading.value = true;

    var response = await DioService().getMethod(myString.baseUtl);
    if (response.stateCode == 200) {
      for (var element in response.data['files']) {
        audioPlayerList.add(AudioPlayerModel.fromJson(element));
        loading.value = false;
      }
    }
  }
}
