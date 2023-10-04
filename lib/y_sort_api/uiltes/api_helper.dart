import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ui/y_sort_api/model/sort_model.dart';

class SortApi
{
  static final SortApi sortApi=SortApi._();
  SortApi._();

  Future<List<SortModel>> getSortApi()
  async {
    String link="https://fakestoreapi.com/products";
    var responce=await http.get(Uri.parse(link));
    List json=jsonDecode(responce.body);
    List<SortModel> sortModalList=json.map((e) => SortModel.fromJson(e)).toList();
    return sortModalList;
  }
}