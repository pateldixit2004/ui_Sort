import 'package:flutter/material.dart';

class SScreen extends StatefulWidget {
  const SScreen({super.key});

  @override
  State<SScreen> createState() => _SScreenState();
}

class _SScreenState extends State<SScreen> {
  Future<void> refece()
  async {
    await Text("Dixit");
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [

          RefreshIndicator(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 5));
            },

            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 400,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/cake.jpg"),fit: BoxFit.cover),
                    ),
                    child: Container(

                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3),
                          ])
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Patel Shop",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text("10 ",style: TextStyle(color: Colors.grey,fontSize: 16),),
                                SizedBox(width: 50,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),),
                ),
                SliverList(delegate: SliverChildListDelegate([Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(color: Colors.grey,height: 1.4),),
                    SizedBox(height: 40,),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: TextStyle(color: Colors.grey,height: 1.4),),
                    SizedBox(height: 40,),
                    Text("18 April 2004",style: TextStyle( color: Colors.white),),
                    SizedBox(height: 20,),
                    Text("18 April ",style: TextStyle( color: Colors.white),),
                    SizedBox(height: 20,),
                    Text("18  ",style: TextStyle( color: Colors.white),),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          make(image: "assets/img/burger.jpg"),
                          make(image: "assets/img/dal.jpg"),
                          make(image: "assets/img/dosa.jpg"),
                        ],
                      ),
                    ),
                    SizedBox(height: 120,),
                  ],),
                )]))
              ],
            ),
          ),
          Positioned.fill(bottom: 50,child: Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow[700],
              ),
              child: Align(child: Text("Follow",style: TextStyle(color: Colors.white),)),
            ),
          ))
        ],
      ),
    ),);
  }
  Widget make({image})
  {
    return AspectRatio(aspectRatio: 3.5/1,child: Container(
      margin: EdgeInsets.only(right: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black,
              Colors.black.withOpacity(.3),
            ])
        ),
        child: Align(
          child: Icon(Icons.play_arrow,color: Colors.white,size: 20,),
        ),
      ),

    ));
  }
}
