// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hi_farm/constants.dart';
// import 'package:hi_farm/models/cart_item.dart';
// import 'package:ionicons/ionicons.dart';

// class CartTile extends StatelessWidget {
//   final CartItem item;
//   final Function() onRemove;
//   final Function() onAdd;
//   const CartTile(
//       {super.key,
//       required this.item,
//       required this.onRemove,
//       required this.onAdd});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             children: [
//               Container(
//                 height: 85,
//                 width: 85,
//                 decoration: BoxDecoration(
//                   color: kcontentColor,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 child: Image.asset(
//                   item.product.image,
//                 ),
//               ),
//               const SizedBox(width: 10),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     item.product.title,
//                     style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey.shade400,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Positioned(
//           top: 5,
//           right: 5,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [],
//           ),
//         )
//       ],
//     );
//   }
// }
