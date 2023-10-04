import 'package:get/get.dart';
import 'package:ui/photo_zoom/model.dart';
import 'package:ui/youtube/model/youTube.dart';
import 'package:ui/youtube/utiles/api_helper.dart';

class YouTubeController extends GetxController
{

  Future<YouTubeModel> takeApi()
  async {
    YouTubeModel? model=await Apihelper.api_helpe.getYouApi();
    return model;
  }


}