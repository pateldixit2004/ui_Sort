import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/firebase/utils/firebase_helper.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  bool islogin=false;
  @override
  void initState() {
    super.initState();
     // islogin =FireBaseHelper.fireBaseHelper.checkUser();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          IconButton(onPressed: () async {
            String msg= await FireBaseHelper.fireBaseHelper.authGet();
            Get.snackbar("Sucees"," message",backgroundColor:msg=="Sucess"?Colors.green:Colors.red);
            if(msg=="Sucess")
              {
                Get.toNamed("/zoom");
              }
            print("==========================================$msg");
          }, icon: Icon(Icons.person_2_outlined))
        ],
      ),
    ),);
  }
}
