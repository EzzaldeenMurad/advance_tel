// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';

// // Import the firebase_core and cloud_firestore plugin
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AddUser extends StatelessWidget {
//   final String userId;
//   final String name;
//   final String business_activity;
//   final int phone_number;
//   final String location;
//   final String email;

//   AddUser({
//     super.key,
//     required this.userId,
//     required this.name,
//     required this.business_activity,
//     required this.phone_number,
//     required this.location,
//     required this.email,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // Create a CollectionReference called users that references the firestore collection
//     // CollectionReference users = FirebaseFirestore.instance.collection('users');

//     DocumentReference collectionRef = FirebaseFirestore.instance.collection('users').doc(userId);
//     // DocumentReference documentRef = collectionRef.doc(userId);
//     // await documentRef.set(data);
//     Future<void> addUser() async {
//       // Call the user's CollectionReference to add a new user
//     await   collectionRef
//           .set({
//             'name': 'name',
//             'business_activity': 'business_activity',
//             'phone_number': 774029461,
//             'location': 'location',
//             'email': 'email',
//             // 'name': name,
//             // 'business_activity': business_activity,
//             // 'phone_number': phone_number,
//             // 'location': location,
//             // 'email': email,
//           })
//           .then((value) => AwesomeDialog(
//               context: context, title: 'Error', body: Text('User Added'))
//             ..show())
//           .catchError((error) => AwesomeDialog(
//               context: context,
//               title: 'Error',
//               body: Text('Failed to add user: $error'))
//             ..show());
//     }

//     // return TextButton(
//     //   onPressed: addUser,
//     //   child: Text(
//     //     "Add User",
//     //   ),
//     // );
//   }
// }
