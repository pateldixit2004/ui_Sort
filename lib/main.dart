


import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/f_s_project/utils/mongodb_helper.dart';
import 'package:ui/firebase/view/log_in_screen.dart';
import 'package:ui/firebase/view/s.dart';
import 'package:ui/photo_zoom/photo_zoom.dart';
import 'package:ui/screen/view/home_screen.dart';
import 'package:ui/y_sort_api/view/S_home_screen.dart';
import 'package:ui/youtube/view/u_home_screen.dart';

import 'firebase_options.dart';

Future<void> main()
async {

    WidgetsFlutterBinding.ensureInitialized();
    // await MongoDatabase.connect();
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
  runApp(
    GetMaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      routes: {
        // "/":(context) =>HomeScreen(),
        // "/":(context) =>FoodHomeScreen(),

        /*Zoom*/
        // "/zoom":(context) => HOMESDSCREEN(),
        // "/":(context) => Dome_Screen(),
        // "/":(context) => SScreen(),
        // "/":(context) => Home(),
        // "/":(context) => ZoomScreeen(),
        /*FireBase*/
        // '/':(context) => S(),
        // '/log':(context) => LogInScreen(),
        // "/":(p0) => Home(),

        // "/":(p0) => U_HomeScreen(),
        "/":(p0) => SHomeScreen(),
      },
    )
  );
}
 // flutter_pagination_helper: ^1.0.1+2


// import 'package:test/test.dart';
//
// void main() {
//   group('String', () {
//     test('.split() splits the string on the delimiter', () {
//       var string = 'foo,bar,baz';
//       expect(string.split(','), equals(['foo', 'bar', 'baz']));
//     });
//
//     test('.trim() removes surrounding whitespace', () {
//       var string = '  foo ';
//       expect(string.trim(), equals('foo'));
//     });
//   });
//
//   group('int', () {
//     test('.remainder() returns the remainder of division', () {
//       expect(11.remainder(3), equals(2));
//     });
//
//     test('.toRadixString() returns a hex string', () {
//       expect(11.toRadixString(16), equals('b'));
//     });
//   });
// }
// import 'package:http/http.dart' as http;
//
// class ProductListScreen extends StatefulWidget {
//   @override
//   _ProductListScreenState createState() => _ProductListScreenState();
// }
//
// class _ProductListScreenState extends State<ProductListScreen> {
//   List<dynamic> products = [];
//
//   @override
//   void initState() {
//     super.initState();
//     fetchProducts();
//   }
//
//   Future<void> fetchProducts() async {
//     final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
//
//     if (response.statusCode == 200) {
//       setState(() {
//         products = json.decode(response.body);
//         bubbleSort(products); // Sort by price (high to low)
//       });
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
//
//   void bubbleSort(List<dynamic> list) {
//     int n = list.length;
//     bool swapped;
//
//     do {
//       swapped = false;
//       for (int i = 0; i < n - 1; i++) {
//         if (list[i+1]['price'] > list[i ]['price']) {
//           // Swap the products if they are out of order
//           var temp = list[i+1];
//           list[i+1] = list[i];
//           list[i ] = temp;
//           swapped = true;
//         }
//       }
//     } while (swapped);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product List'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(onPressed: () {
//
//
//           }, child: Text("H to L")),
//           Expanded(
//             child: ListView.builder(
//               itemCount: products.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final product = products[index];
//                 return ListTile(
//                   title: Text(product['title']),
//                   subtitle: Text('${product['price']}'),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: ProductListScreen(),
//   ),);
// }




/*WITHOUT LOOPING*/
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class ProductListScreen extends StatefulWidget {
//   @override
//   _ProductListScreenState createState() => _ProductListScreenState();
// }
//
// class _ProductListScreenState extends State<ProductListScreen> {
//   List<dynamic> products = [];
//   bool sorted = false;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchProducts();
//   }
// /*Api helper*/
//   Future<void> fetchProducts() async {
//     final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
//
//     if (response.statusCode == 200) {
//       setState(() {
//         products = json.decode(response.body);
//       });
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
//
//   void sortProducts() {
//     if (!sorted) {
//       products.sort((a, b) => b['price'].compareTo(a['price'])); // Sort by price (high to low)
//     } else {
//       products.sort((a, b) => a['price'].compareTo(b['price'])); // Sort by price (low to high)
//     }
//
//     setState(() {
//       sorted = !sorted;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product List'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: sortProducts,
//             child: Text(sorted ? 'Sort Low to High' : 'Sort High to Low'),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: products.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final product = products[index];
//                 return ListTile(
//                   title: Text(product['title']),
//                   subtitle: Text('\$${product['price']}'),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: ProductListScreen(),
//   ));
// }


/*With Looping*/
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class ProductListScreen extends StatefulWidget {
//   @override
//   _ProductListScreenState createState() => _ProductListScreenState();
// }
//
// class _ProductListScreenState extends State<ProductListScreen> {
//   List<dynamic> products = [];
//   bool sorted = false;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchProducts();
//   }
//
//   Future<void> fetchProducts() async {
//     final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
//
//     if (response.statusCode == 200) {
//       setState(() {
//         products = json.decode(response.body);
//       });
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
//
//   void bubbleSort(List<dynamic> list) {
//     int n = list.length;
//     bool swapped;
//
//     do {
//       swapped = false;
//       for (int i = 0; i < n - 1; i++) {
//         if (!sorted && list[i]['price'] < list[i + 1]['price']) {
//           // Sort by price (high to low)
//           var temp = list[i];
//           list[i] = list[i + 1];
//           list[i + 1] = temp;
//           swapped = true;
//         } else if (sorted && list[i]['price'] > list[i + 1]['price']) {
//           // Sort by price (low to high)
//           var temp = list[i];
//           list[i] = list[i + 1];
//           list[i + 1] = temp;
//           swapped = true;
//         }
//       }
//     } while (swapped);
//   }
//
//   void sortProducts() {
//     bubbleSort(products);
//     setState(() {
//       sorted = !sorted;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product List'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: sortProducts,
//             child: Text(sorted ? 'Sort Low to High' : 'Sort High to Low'),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: products.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final product = products[index];
//                 return ListTile(
//                   title: Text(product['title']),
//                   subtitle: Text('\$${product['price']}'),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: ProductListScreen(),
//   ));
// }
