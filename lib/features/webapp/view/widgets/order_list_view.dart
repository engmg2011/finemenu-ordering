// class OrderListView extends StatelessWidget {
//   const OrderListView(
//       {super.key,
//       required this.imageUrl,
//       required this.itemName,
//       required this.itemPrice});
//   final String imageUrl;
//   final String itemName;
//   final num itemPrice;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //width: 500,
//       height: MediaQuery.of(context).size.height * .15,
//       margin: const EdgeInsets.all(18),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),
//         color: lbackgroundclr,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 constraints: BoxConstraints(maxWidth: 100),
//                 child: Image.asset(
//                   imageUrl,
//                   width: 100,
//                   height: 100,
//                 ),
//               ),
//               const SizedBox(
//                 width: 6,
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     itemName,
//                     style: const TextStyle(
//                       color: whiteclr,
//                       fontSize: 18,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     "$itemPrice X 2 KWD",
//                     style: const TextStyle(
//                       color: whiteclr,
//                       fontSize: 22,
//                     ),
//                   ),
//                 ],
//               ),
//               const Icon(
//                 Icons.delete_outline,
//                 color: primaryclr,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';

class OrderListView extends StatefulWidget {
  OrderListView({
    required this.itemName,
    required this.itemSize,
    required this.itemPrice,
    required this.onDelete,
  });
  final String itemName;
  final String itemSize;
  final num itemPrice;
  final VoidCallback onDelete;
  @override
  _OrderListViewState createState() => _OrderListViewState();
}

class _OrderListViewState extends State<OrderListView> {
  int counter = 1; // Initial counter value

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        title: Text(widget.itemName,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        subtitle: Text(widget.itemSize),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Minus button
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: decrementCounter,
            ),
            // Counter
            Text('$counter',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                )),
            // Plus button
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: incrementCounter,
            ),
            Text((counter * widget.itemPrice).toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                )),

            // Delete icon
            GestureDetector(
              onTap: widget.onDelete,
              child: const Icon(
                Icons.delete,
                color: primaryclr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
