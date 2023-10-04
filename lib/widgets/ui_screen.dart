import 'package:flutter/material.dart';

class UIScreen extends StatefulWidget {
  const UIScreen({super.key});

  @override
  State<UIScreen> createState() => _UIScreenState();
}

class _UIScreenState extends State<UIScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50))
                ),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              Material(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                ),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
