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
        title: Text('Title'),
        subtitle: Text('Subtitle'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Minus button
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: decrementCounter,
            ),
            // Counter
            Text('$counter',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                )),
            // Plus button
            IconButton(
              icon: Icon(Icons.add),
              onPressed: incrementCounter,
            ),
            // Delete icon
            GestureDetector(
              onTap: () {
                // Add your delete logic here
                print('Delete tapped');
              },
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
