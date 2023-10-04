import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/firebase/utils/firebase_helper.dart';

class S extends StatefulWidget {
  const S({super.key});

  @override
  State<S> createState() => _SState();
}

class _SState extends State<S> {
  bool islogin=false;

  @override
  void initState() {
    super.initState();

    islogin =FireBaseHelper.fireBaseHelper.checkUser();


  }
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      islogin==false?Get.toNamed("/log"):Get.toNamed("/zoom");
    });
    return const SafeArea(child: Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(backgroundImage: AssetImage("assets/img/dosa.jpg"),)
        ],
      )
    ),);
  }
}
