import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController controller;
  int totolpage=4;



  @override
  void initState() {
    super.initState();
   controller=PageController(
     initialPage: 0,
   )..addListener(() { });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: PageView(
        controller: controller,
        children: [
          buildContainer("https://m.media-amazon.com/images/I/51-Cki0iMVL._AC_UL600_FMwebp_QL65_.jpg","india",1),
          buildContainer("https://m.media-amazon.com/images/I/61y2VVWcGBL._AC_UL600_FMwebp_QL65_.jpg","USA",2),
          buildContainer("https://m.media-amazon.com/images/I/61SSVxTSs3L._AC_UL600_FMwebp_QL65_.jpg","Uk",3),
        ],
      ),
    ),);
  }

  Container buildContainer(image,title,page) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(image:NetworkImage(image))),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
              stops: [0.3,0.9],
              colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.9),
          ])
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(page.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("/"+ totolpage.toString()  ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)
                ],
              ),
              Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$title",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),),

                    ],

                  )
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star,color: Colors.grey,size: 15,),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
        );
  }
}
