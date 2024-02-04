
// import 'package:flutter/material.dart';

// class Example extends StatelessWidget {
//   Example({super.key});


//   void addOperation() async {
//      fireStore
//         .collection('users')
//         .doc('yTqAYSs6oxNvDd9UNOhybdc6pWI2')
//         .collection('operations')
//         .add({
//       'trans_id': '11',
//       'company_name': 'you',
//       'category': 'balance',
//       'status': 'status',
//       'phone_number': '778268046',
//       'price': '100',
//       'token': '90h87',
//       'date': FieldValue.serverTimestamp(),
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             InkWell(
//               onTap: () => FirebaseAuth.instance.signOut(),
//               child: const Center(child: Text('data')),
//             ),
//             Center(
//                 child: ElevatedButton(
//                     onPressed: ()  {
//                       addOperation();
//                     },
//                     child: const Text('data')))
//           ],
//         ),
//       ),
//     );
//   }
// }
