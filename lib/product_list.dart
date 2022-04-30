// import 'package:flutter/material.dart';
// import 'package:badges/badges.dart';

// class ProductListScreen extends StatefulWidget {
//   ProductListScreen({Key? key}) : super(key: key);

//   @override
//   _ProductListScreenState createState() => _ProductListScreenState();
// }

// class _ProductListScreenState extends State<ProductListScreen> {
//   List<String> productName = [
//     'Mango',
//     'Orange',
//     'Grapes',
//     'Banana',
//     'Chery',
//     'Peach',
//     'Mixed Fruit Basket',
//   ];
//   List<String> productUnit = [
//     'KG',
//     'Dozen',
//     'KG',
//     'Dozen',
//     'KG',
//     'KG',
//     'KG',
//   ];
//   List<int> productPrice = [10, 20, 30, 40, 50, 60, 70];
//   List<String> productImage = [
//     'https://image.shutterstock.com/image-photo/mango-isolated-on-white-background-600w-610892249.jpg',
//     'https://image.shutterstock.com/image-photo/orange-fruit-slices-leaves-isolated-600w-1386912362.jpg',
//     'https://image.shutterstock.com/image-photo/green-grape-leaves-isolated-on-600w-533487490.jpg',
//     'https://media.istockphoto.com/photos/banana-picture-id1184345169?s=612x612',
//     'https://media.istockphoto.com/photos/cherry-trio-with-stem-and-leaf-picture-id157428769?s=612x612',
//     'https://media.istockphoto.com/photos/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white-picture-id1151868959?s=612x612',
//     'https://media.istockphoto.com/photos/fruit-background-picture-id529664572?s=612x612',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product List'),
//         centerTitle: true,
//         actions: [
//           Center(
//             child: Badge(
//               badgeContent: const Text(
//                 '0',
//                 style: TextStyle(color: Colors.white),
//               ),
//               animationDuration: Duration(milliseconds: 300),
//               child: Icon(Icons.shopping_bag_outlined),
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: productName.length,
//               itemBuilder: ((context, index) {
//                 return Card(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Image(
//                             height: 100,
//                             width: 100,
//                             image: NetworkImage(productImage[index].toString()),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Expanded(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   productName[index].toString(),
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                 ),
//                                 Text(
//                                   productUnit[index].toString() +
//                                       " " +
//                                       "\$" +
//                                       productPrice[index].toString(),
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(height: 5),
//                                 Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Container(
//                                     height: 35,
//                                     width: 100,
//                                     decoration: BoxDecoration(
//                                         color: Colors.green,
//                                         borderRadius: BorderRadius.circular(5)),
//                                     child: Center(
//                                         child: Text(
//                                       'Add to cart',
//                                       style: TextStyle(color: Colors.white),
//                                     )),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
