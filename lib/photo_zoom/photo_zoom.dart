
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/photo_zoom/controller.dart';
import 'package:ui/photo_zoom/database.dart';
import 'package:ui/photo_zoom/model.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:vector_math/vector_math_64.dart';

class HOMESDSCREEN extends StatefulWidget {
  const HOMESDSCREEN({super.key});

  @override
  State<HOMESDSCREEN> createState() => _HOMESDSCREENState();
}

class _HOMESDSCREENState extends State<HOMESDSCREEN> {
  List list = ["snj", "bdjd"];

  homeContoller contoller=Get.put(homeContoller());
  @override
  void initState() {
    super.initState();
    contoller.getData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            //     VxBox(
            //       child: Text("Box").centered(),
            //     ).height(100).width(100).padding(Vx.m12).red500.make().centered(),
            //     VxScrollVertical(
            //   physics: AlwaysScrollableScrollPhysics(),
            //   child: <Widget>[
            //     'First Text'.text.make(),
            //     'Second Text'.text.make(),
            //     'Second Text'.text.make(),
            //     'Second Text'.text.make(),'Second Text'.text.make(),
            //     'Second Text'.text.make(),
            //     'Second Text'.text.make(),'Second Text'.text.make(),
            //     'Second Text'.text.make(),
            //     'Second Text'.text.make(),'Second Text'.text.make(),
            //     'Second Text'.text.make(),
            //     'Second Text'.text.make(),
            //
            //   ].hStack().scrollHorizontal(),
            // ),
            //     VxBox(
            //       child: Text("Box").centered(),
            //     ).height(100).width(100).padding(Vx.m12).red500.make().centered(),
            //     'velocityx'.text.red500.xl2.bold.center.heightRelaxed.underline.wide.uppercase.make(),
            // VxCircle(
            //   radius: 50,
            //   backgroundColor: Colors.green,
            // ),
            // VxTextField(
            //   height: 10,
            // ),
            IconButton(onPressed: () {
              model m1=model();
              DbHelper.dbHelper.insertDb(m1: m1);
            }, icon: Icon(Icons.search)),
            Obx(
              () =>  GestureDetector(
                onScaleStart: (details) {
                  print("========================================$details");
                  contoller.previes_scale.value=contoller.scale.value;
                  // previes_scale = _scale;
                  // setState(() {});
                },
                onScaleUpdate: (details) {
                  print(
                      "*********************************************************************$details");
                  // _scale = previes_scale * details.scale;
                  contoller.scale.value=contoller.previes_scale.value * details.scale;
                  // setState(() {});
                },
                onScaleEnd: (details) {
                  print("////////////////////////////////////////////////////////////////////////////////////////////////////////$details");

                  contoller.previes_scale.value = 1.0;
                  // setState(() {});
                },
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Transform(
                    alignment: FractionalOffset.center,
                      transform:
                          Matrix4.diagonal3(Vector3(contoller.scale.value,contoller.scale.value,contoller.scale.value)),
                      child: Image.asset("assets/img/sn.jpeg"),)
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
