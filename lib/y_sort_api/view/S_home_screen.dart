import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/y_sort_api/model/sort_model.dart';
import 'package:ui/y_sort_api/uiltes/sort_controller.dart';

class SHomeScreen extends StatefulWidget {
  const SHomeScreen({super.key});

  @override
  State<SHomeScreen> createState() => _SHomeScreenState();
}

class _SHomeScreenState extends State<SHomeScreen> {
  SortController controller = Get.put(SortController());

  // bool sorted = false;

  @override
  void initState() {
    super.initState();

    controller.takeSortApi();
  }

  // void sortProduct() {
  //   if (!sorted) {
  //     list.sort(
  //       (a, b) => b['price'].compareTo(a['price']),
  //     ); //highto low
  //   } else {
  //     list.sort(
  //       (a, b) => a['price'].compareTo(b['price']),
  //     ); //Low to High
  //   }
  //   setState(() {
  //     sorted = !sorted;
  //   });
  // }

  // void bubbleSort(List<dynamic> list) {
  //   int n = list.length;
  //   bool swapped;
  //
  //   do {
  //     swapped = false;
  //     for (int i = 0; i < n - 1; i++) {
  //       if (list[i]['price'] < list[i + 1]['price']) {
  //         // Swap the products if they are out of order
  //         var temp = list[i];
  //         list[i] = list[i + 1];
  //         list[i + 1] = temp;
  //         swapped = true;
  //       }
  //     }
  //   } while (swapped);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sort Api",style: TextStyle(color: Colors.green),),
          centerTitle: true,
          backgroundColor: Colors.grey.shade100,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.sortData();
                  },
                  child: Obx(
                    () => Container(
                      child: controller.sortedA_Z.value
                          ? Icon(Icons.sort_by_alpha,color: Colors.black45,)
                          : Transform.rotate(
                              angle: pi,
                              child: Icon(Icons.sort_by_alpha_outlined,color: Colors.black54,),),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade50),

                ),

                ElevatedButton(
                  onPressed: () {
                    controller.sortDataHTL();
                  },
                  child: Obx(
                    () => Container(
                      child: controller.sorted.value
                          ? Icon(Icons.arrow_upward_outlined,color: Colors.green,)
                          : Icon(Icons.arrow_downward_outlined,color: Colors.red,),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade50),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${controller.sortList[index].title}"),
                      subtitle: Row(
                        children: [
                          Text("${controller.sortList[index].price}"),
                          Spacer(),
                          IconButton(onPressed: () {
                            controller.sortList[index].price! * 2;
                            log(controller.sortList[index].price!);

                          },icon: Icon(Icons.add)),
                          IconButton(onPressed: () {

                          }, icon:Icon(Icons.remove),
                          )
                        ],
                      ),
                      leading: SizedBox(
                          width: 40,
                          child: Image.network(
                              "${controller.sortList[index].image}")),
                    );
                  },
                  itemCount: controller.sortList.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
