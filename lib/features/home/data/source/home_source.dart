import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:musicplayer/features/home/data/modelclass/music_model_classes.dart';

class Apiservices {
  Dio dio =
      Dio(BaseOptions(baseUrl: 'https://deezerdevs-deezer.p.rapidapi.com/'));
  Future<Music?> getmusic() async {
    try {
      Response response = await dio
          .get('playlist/148a7cb354msh1eb6cf772340464p1125a2jsn410a8767589b');
      if (response.statusCode == 200) {
        String json = jsonEncode(response.data);
        return musicFromJson(json);
      }
    } on DioException catch (e) {
      log('$e:error');
    }
    return null;
  }
}
// playlist/148a7cb354msh1eb6cf772340464p1125a2jsn410a8767589b