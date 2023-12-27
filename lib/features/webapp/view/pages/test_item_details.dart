// import 'package:finemenu/features/webapp/view/cubit/home_cubit.dart';
// import 'package:finemenu/features/webapp/view/cubit/home_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../../core/constant/colors.dart';
//
// class ItemPagePrices extends StatelessWidget {
//   ItemPagePrices({
//     Key? key,
//     required this.Size,
//     required this.price,
//   }) : super(key: key) {}
//   final String Size;
//   final num price;
//
//   // selectPrice(index) {
//
//   // widget.selectedPriceCallBack(index);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: BlocConsumer<HomeCubit, HomeState>(
//         listener: (context, state) {
//           // TODO: implement listener
//         },
//         builder: (context, state) {
//           final cubit = HomeCubit.get(context);
//           return Column(children: [
//             FilterChip(
//               onSelected: (bool value) {
//                 cubit.togleSelectedSize();
//               },
//               selectedColor: primaryclr,
//               backgroundColor: Colors.black,
//               checkmarkColor: Colors.white,
//               autofocus: true,
//               selected: cubit.selectedSize,
//               label: Column(
//                 children: [
//                   Text(Size,
//                       style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12)),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Wrap(
//                     children: [
//                       Text(price.toString(),
//                           style: const TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 12)),
//                       const Text(' KWD',
//                           style: TextStyle(
//                               color: Colors.white, fontSize: 10, height: 1.4)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ]);
//         },
//       ),
//     );
//   }
// }
// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// class MyDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           CircleAvatar(
//             backgroundColor: Colors.green,
//             child: Icon(
//               Icons.check,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 16.0),
//           Text("Your Message Here"),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dialog Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return MyDialog();
//               },
//             );
//
//             // Auto-dismiss the dialog after 3 seconds
//             Timer(Duration(seconds: 3), () {
//               Navigator.of(context).pop();
//             });
//           },
//           child: Text('Show Dialog'),
//         ),
//       ),
//     );
//   }
// }
