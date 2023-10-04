import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/youtube/controller/youTube_controller.dart';
import 'package:ui/youtube/model/youTube.dart';

class U_HomeScreen extends StatefulWidget {
  const U_HomeScreen({super.key});

  @override
  State<U_HomeScreen> createState() => _U_HomeScreenState();
}

class _U_HomeScreenState extends State<U_HomeScreen> {



  YouTubeController controller=Get.put(YouTubeController());
  var item;
  Future refence()
  async {
    item=[];
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: FutureBuilder(builder: (context, snapshot) {
        
        if(snapshot.hasError)
          {
            return Text("${snapshot.error}");
          }
        else if(snapshot.hasData)
          {
            YouTubeModel? model=snapshot.data;

            return RefreshIndicator(

              onRefresh:refence,
              child: ListView.builder(itemBuilder: (context, index) {
                item =model.items![index];
                return Column(
                  children: [
                    Text("${model.items![index].snippet!.isCc}")
                  ],
                );
              },itemCount: model!.items!.length,),
            );
          }
        return Center(child: CircularProgressIndicator());
      },future: controller.takeApi(),)
    ),);
  }
}
