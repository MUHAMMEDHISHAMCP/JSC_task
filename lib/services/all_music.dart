import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:jsc_task/model/music_list_model.dart';
import 'package:jsc_task/view/widgets/snack_bar.dart';

class AllMusicServices {
  var dio = Dio();
  String url = "https://itunes.apple.com/search?term=John";

  Future<MusicListModel?> musicServiceRepo() async {
    log('enter');
    try {
      final response = await dio.get(url);

      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        final Map<String, dynamic> data = await json.decode(response.data);
        log(data.toString());
        return MusicListModel.fromJson(data);
      }
    } catch (e) {
      log(e.toString());
    return ShowDialogs.popUp("Something went wrong");
    }
    return null;
  }
}
