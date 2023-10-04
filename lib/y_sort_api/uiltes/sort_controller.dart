import 'dart:developer';

import 'package:get/get.dart';
import 'package:ui/y_sort_api/model/sort_model.dart';
import 'package:ui/y_sort_api/uiltes/api_helper.dart';

class SortController extends GetxController {
  RxList<SortModel> sortList = <SortModel>[].obs;

  Future<List> takeSortApi() async {
    sortList.value = await SortApi.sortApi.getSortApi();
    return sortList;
  }

  RxBool sorted = false.obs;
  RxBool sortedA_Z = false.obs;

  void sortData() {
    List<SortModel> l1 = List.from(sortList);
    if(!sortedA_Z.value) {
      l1.sort(
          (a, b) => a.title!.toLowerCase().compareTo(b.title!.toLowerCase()));
    }
    else
      {
        l1.sort((a, b) => b.title!.toLowerCase().compareTo(a.title!.toLowerCase()));

      }
    sortList.value = l1;
    sortedA_Z.value=!sortedA_Z.value;
  }


  void sortDataHTL() {
    List<SortModel> l1 = List.from(sortList);
    if(!sorted.value) {
      l1.sort((a, b) => b.price!.compareTo(a.price!));
    } else {
      l1.sort(
        (a, b) => a.price!.compareTo(b.price!),
      );
    }
    sortList.value = l1;
    sorted.value=!sorted.value;
  }
}
