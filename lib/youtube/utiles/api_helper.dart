import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ui/youtube/model/youTube.dart';
class Apihelper
{
  static final Apihelper api_helpe=Apihelper._();
  Apihelper._();


  Future<YouTubeModel> getYouApi()
  async {
    String? link="https://youtube-v31.p.rapidapi.com/captions?part=snippet&videoId=M7FIvfx5J10";
    var responce= await http.get(Uri.parse(link),headers: {
      'X-RapidAPI-Key': '4e646f0728msh450e281692cd256p126822jsn348e75400e6c',
      'X-RapidAPI-Host': 'youtube-v31.p.rapidapi.com'
    },  );
    var json=jsonDecode(responce.body);
    YouTubeModel model=YouTubeModel.fromJson(json);
    return model;
  }
}