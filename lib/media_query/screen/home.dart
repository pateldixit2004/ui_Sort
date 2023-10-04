import 'package:flutter/material.dart';
import 'package:ui/media_query/screen/utils.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Image.asset("assets/img/susi.jpg",width: Utils.getDeviceType() == 'phone'
              ? deviceWidth / 2
              : deviceWidth / 3),
          Text(
            'Play Anywhere',
            style: TextStyle(
              fontSize: Utils.getDeviceType() == 'phone' ? 28.0 : 46.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.paid,
            color: Color(0xFF4756DF),
            size: Utils.getDeviceType() == 'phone' ? 24.0 : 32.0,
          ),
          Icon(
            Icons.paid,
            color: Color(0xFFB9BFF3),
            size: Utils.getDeviceType() == 'phone' ? 24.0 : 32.0,
          ),
          Icon(
            Icons.paid,
            color: Color(0xFFB9BFF3),
            size: Utils.getDeviceType() == 'phone' ? 24.0 : 32.0,
          ),
        ],),
        ],
      ),
    ),);
  }
}
