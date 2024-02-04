// import 'package:flutter/material.dart';
// import 'package:contacts_service/contacts_service.dart';
// import 'package:permission_handler/permission_handler.dart';

// class AccessContacts extends StatelessWidget {
//   const AccessContacts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Contacts Example'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: const Text('استعراض جهة الاتصال'),
//             onPressed: () {
//               _getContacts();
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _getContacts() async {
//     final PermissionStatus permissionStatus = await _getPermission();
//     if (permissionStatus == PermissionStatus.granted) {
//       final Iterable<Contact> contacts = await ContactsService.getContacts();
//       for (var contact in contacts) {
//         print('اسم الشخص: ${contact.displayName}');
//       }
//     } else {
//       print('لم يتم منح إذن الوصول إلى جهة الاتصال');
//     }
//   }

//   Future<PermissionStatus> _getPermission() async {
//     final PermissionStatus permission = await Permission.contacts.status;
//     if (permission != PermissionStatus.granted &&
//         permission != PermissionStatus.permanentlyDenied) {
//       final Map<Permission, PermissionStatus> permissionStatus =
//           await [Permission.contacts].request();
//       return permissionStatus[Permission.contacts] ?? PermissionStatus.denied;
//     } else {
//       return permission;
//     }
//   }
// }
