import 'package:flutter/material.dart';

class FoodHomeScreen extends StatefulWidget {
  const FoodHomeScreen({super.key});

  @override
  State<FoodHomeScreen> createState() => _FoodHomeScreenState();
}

class _FoodHomeScreenState extends State<FoodHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/img/susi.jpg'),
          fit: BoxFit.cover,filterQuality: FilterQuality.high)
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin:Alignment.bottomCenter,colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ])
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Taking order For Delevery",style: TextStyle(color: Colors.white,fontSize: 50),),
                SizedBox(height: 20,),
                Text("See  resturant nearby loction",style: TextStyle(color: Colors.white,height: 1.4,fontSize: 15),),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    gradient: LinearGradient(colors: [
                      Colors.yellow,
                      Colors.orange
                    ],),
                  ),
                  child: MaterialButton(onPressed: (){
                    
                  },minWidth: double.infinity,child: Text("Start",style: TextStyle(color: Colors.white),),),
                ),
                SizedBox(height: 30,),
                Align(
                  child: Text("Now Delivery ",style: TextStyle(color: Colors.white70),),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    ),);
  }
}
