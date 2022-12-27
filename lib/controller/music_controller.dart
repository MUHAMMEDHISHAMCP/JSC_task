
import 'package:flutter/material.dart';
import 'package:jsc_task/model/music_list_model.dart';
import 'package:jsc_task/services/all_music.dart';

class MusicListProvider extends ChangeNotifier {
  List<Result> allMusic = [];
  bool isLoading = false;

  MusicListProvider() {
    getAllMusic();
  }

  Future<void> getAllMusic() async {
    isLoading = true;
    notifyListeners();

    MusicListModel? musicList = await AllMusicServices().musicServiceRepo();
    // log(musicList!.results![1].trackName.toString());

    if (musicList != null) {
      allMusic.clear();
      allMusic.addAll(musicList.results ?? []);
      isLoading = false;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }
}
