import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class AniScreen extends StatefulWidget {
  const AniScreen({super.key});

  @override
  State<AniScreen> createState() => _AniScreenState(double as double,Widget as Widget);
}

class _AniScreenState extends State<AniScreen> {
  final double deley;
  final Widget child;

  _AniScreenState(this.deley, this.child);
  @override
  Widget build(BuildContext context) {
    // final tween=MultiTrackTween([
    //   Track().add
    // ]);
    return SafeArea(child: Scaffold(

    ),);
  }
}
