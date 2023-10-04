import 'package:get/get.dart';
import 'package:ui/photo_zoom/database.dart';

class homeContoller extends GetxController
{
  RxDouble scale = 1.0.obs;
  RxDouble previes_scale = 1.0.obs;

  RxList dataList=[].obs;

  Future<void> getData()
  async {
    dataList.value=await DbHelper.dbHelper.readDb();
  }
}