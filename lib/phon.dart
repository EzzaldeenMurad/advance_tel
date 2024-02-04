// // import 'package:fawry_cach/core/widgets/customButoon.dart';
// // import 'package:flutter/material.dart';
// // import 'package:contacts_service/contacts_service.dart';
// // import 'package:get/get.dart';

// // import 'core/widgets/appbar.dart';

// // class MyContactPage extends StatefulWidget {
// //   @override
// //   _MyContactPageState createState() => _MyContactPageState();
// // }

// // class _MyContactPageState extends State<MyContactPage> {
// //   List<Contact> contacts = [];
// //   List<Contact> filteredContacts = [];
// //   TextEditingController _phoneNumberController = TextEditingController();

// //   @override
// //   void initState() {
// //     super.initState();
// //     getContacts();
// //   }

// //   Future<void> getContacts() async {
// //     Iterable<Contact> contactList = await ContactsService.getContacts();
// //     setState(() {
// //       contacts = contactList.toList();
// //       filteredContacts = contactList.toList();
// //     });
// //   }

// //   void addContact(Contact contact) {
// //     setState(() {
// //       _phoneNumberController.text = contact.phones?.first?.value ?? '';
// //     });
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(content: Text('تمت إضافة الرقم')),
// //     );
// //   }

// //   void filterContacts(String query) {
// //     setState(() {
// //       filteredContacts = contacts
// //           .where((contact) =>
// //               contact.displayName!
// //                   .toLowerCase()
// //                   .contains(query.toLowerCase()) ||
// //               contact.phones!.any((phone) =>
// //                   phone.value!.toLowerCase().contains(query.toLowerCase())))
// //           .toList();
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: CustomAppBar(
// //         text: " جهات الاتصال ",
// //         iconData: Icons.arrow_back_rounded,
// //         onPressed: () {

// //         },
// //       ),
// //       body: Column(
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: TextField(
// //               onChanged: (value) => filterContacts(value),
// //               decoration: InputDecoration(
// //                 labelText: 'ابحث عن الاسم أو الرقم',
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: filteredContacts.length,
// //               itemBuilder: (BuildContext context, int index) {
// //                 Contact contact = filteredContacts[index];
// //                 return ListTile(
// //                   title: Text(contact.displayName ?? ''),
// //                   subtitle: Text(contact.phones?.first?.value ?? ''),
// //                   onTap: () {
// //                     addContact(contact);
// //                   },
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   const HomePage({super.key});

// //   @override
// //   State<HomePage> createState() => _nameState();
// // }

// // class _nameState extends State<HomePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: CustomAppBar(
// //         text: " واجة شحن الرصيد ",
// //         iconData: Icons.arrow_back_rounded,
// //         onPressed: () {
// //           Get.to(());
// //         },
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text('الرقم المختار:'),
// //             SizedBox(height: 10.0),
// //             TextField(
// //               decoration: InputDecoration(
// //                 labelText: '  ادخل الرقم المراد شحنه  ',
// //               ),
// //             ),
// //             customButoon(
// //                 child: Text("اضغط للانتقال الى جهة الاتصال"),
// //                 function: () {
// //                   Get.to(MyContactPage());
// //                 })
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:fawry_cach/core/widgets/customButoon.dart';
// // import 'package:flutter/material.dart';
// // import 'package:contacts_service/contacts_service.dart';
// // import 'package:get/get.dart';

// // import 'core/widgets/appbar.dart';

// // class MyContactPage extends StatefulWidget {
// //   @override
// //   _MyContactPageState createState() => _MyContactPageState();
// // }

// // class _MyContactPageState extends State<MyContactPage> {
// //   List<Contact> contacts = [];
// //   List<Contact> filteredContacts = [];
// //   late TextEditingController _phoneNumberController;

// //   @override
// //   void initState() {
// //     super.initState();
// //     getContacts();
// //   }

// //   Future<void> getContacts() async {
// //     Iterable<Contact> contactList = await ContactsService.getContacts();
// //     setState(() {
// //       contacts = contactList.toList();
// //       filteredContacts = contactList.toList();
// //     });
// //   }

// //   void addContact(Contact contact) {
// //     _phoneNumberController.text = contact.phones?.first.value ?? '';
// //     ScaffoldMessenger.of(context).showSnackBar(
// //       SnackBar(content: Text('تمت إضافة الرقم')),
// //     );
// //   }

// //   void filterContacts(String query) {
// //     setState(() {
// //       filteredContacts = contacts
// //           .where((contact) =>
// //               contact.displayName!
// //                   .toLowerCase()
// //                   .contains(query.toLowerCase()) ||
// //               contact.phones!.any((phone) =>
// //                   phone.value!.toLowerCase().contains(query.toLowerCase())))
// //           .toList();
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: CustomAppBar(
// //         text: " جهات الاتصال ",
// //         iconData: Icons.arrow_back_rounded,
// //         onPressed: () {
// //           Get.back();
// //         },
// //       ),
// //       body: Column(
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: TextField(
// //               onChanged: (value) => filterContacts(value),
// //               decoration: InputDecoration(
// //                 labelText: 'ابحث عن الاسم أو الرقم',
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: filteredContacts.length,
// //               itemBuilder: (BuildContext context, int index) {
// //                 Contact contact = filteredContacts[index];
// //                 return ListTile(
// //                   title: Text(contact.displayName ?? ''),
// //                   subtitle: Text(contact.phones?.first.value ?? ''),
// //                   onTap: () {
// //                     addContact(contact);
// //                   },
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class HomePageb extends StatefulWidget {
// //  const HomePageb({super.key});

// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePageb> {
// //   late TextEditingController _phoneNumberController;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _phoneNumberController = TextEditingController();
// //   }

// //   @override
// //   void dispose() {
// //     _phoneNumberController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: CustomAppBar(
// //         text: " واجة شحن الرصيد ",
// //         iconData: Icons.arrow_back_rounded,
// //         onPressed: () {
// //           Get.back();
// //         },
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text('الرقم المختار:'),
// //             SizedBox(height: 10.0),
// //             TextField(
// //               controller: _phoneNumberController,
// //               decoration: InputDecoration(
// //                 labelText: '  ادخل الرقم المراد شحنه  ',
// //               ),
// //             ),
// //             customButoon(
// //               child: Text("اضغط للانتقال الى جهة الاتصال"),
// //               function: () {
// //                 Get.to(MyContactPage())!.then((selectedContact) {
// //                   if (selectedContact != null) {
// //                     setState(() {
// //                       _phoneNumberController.text =
// //                           selectedContact.phones?.first?.value ?? '';
// //                     });
// //                   }
// //                 });
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import '../core/widgets/customButoon.dart';
// import 'package:flutter/material.dart';
// import 'package:contacts_service/contacts_service.dart';
// import 'package:get/get.dart';

// import 'core/widgets/appbar.dart';
// import 'features/cabina/controllers/phone_nuber_controler.dart';

// class MyContactPage extends StatefulWidget {
//   const MyContactPage({super.key});

//   @override
//   _MyContactPageState createState() => _MyContactPageState();
// }

// class _MyContactPageState extends State<MyContactPage> {
//   List<Contact> contacts = [];
//   List<Contact> filteredContacts = [];
//   late TextEditingController _phoneNumberController;

//   @override
//   void initState() {
//     super.initState();
//     _phoneNumberController = TextEditingController(); // إضافة هنا
//     getContacts();
//   }

//   Future<void> getContacts() async {
//     Iterable<Contact> contactList = await ContactsService.getContacts();
//     setState(() {
//       contacts = contactList.toList();
//       filteredContacts = contactList.toList();
//     });
//   }

//   void addContact(Contact contact) {
//     setState(() {
//       // تحديث الحقل المرتبط برقم الهاتف
//       _phoneNumberController.text = contact.phones?.first.value ?? '';
//     });
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('تمت إضافة الرقم')),
//     );
//   }

//   void filterContacts(String query) {
//     setState(() {
//       filteredContacts = contacts
//           .where((contact) =>
//               contact.displayName!
//                   .toLowerCase()
//                   .contains(query.toLowerCase()) ||
//               contact.phones!.any((phone) =>
//                   phone.value!.toLowerCase().contains(query.toLowerCase())))
//           .toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         text: " جهات الاتصال ",
//         iconData: Icons.arrow_back_rounded,
//         onPressed: () {
//           Get.back(result: null); // إعادة القيمة null عند العودة
//         },
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               onChanged: (value) => filterContacts(value),
//               decoration: const InputDecoration(
//                 labelText: 'ابحث عن الاسم أو الرقم',
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: filteredContacts.length,
//               itemBuilder: (BuildContext context, int index) {
//                 Contact contact = filteredContacts[index];
//                 return ListTile(
//                   title: Text(contact.displayName ?? ''),
//                   subtitle: Text(contact.phones?.first.value ?? ''),
//                   onTap: () {
//                     Get.back(result: contact);
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomePageb extends StatefulWidget {
//   const HomePageb({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePageb> {
//   // late TextEditingController _phoneNumberController;
//   PhoneNumber phoneNumber = Get.put(PhoneNumber());

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _phoneNumberController = TextEditingController();
//   // }

//   // @override
//   // void dispose() {
//   //   _phoneNumberController.dispose();
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: CustomAppBar(
//           text: " واجة شحن الرصيد ",
//           iconData: Icons.arrow_back_rounded,
//           onPressed: () {
//             Get.back();
//           },
//         ),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('الرقم المختار:'),
//             const SizedBox(height: 10.0),
//             TextField(
//               controller: phoneNumber.phone.value,
//               decoration: const InputDecoration(
//                 labelText: '  ادخل الرقم المراد شحنه  ',
//               ),
//             ),
//             customButoon(
//               child: const Text("اضغط للانتقال الى جهة الاتصال"),
//               function: () async {
//                 Contact? selectedContact = await Get.to(const MyContactPage());
//                 if (selectedContact != null) {
//                   phoneNumber
//                       .setPhone(selectedContact.phones?.first.value ?? '');
//                   // _phoneNumberController.text =
//                   //     selectedContact.phones?.first?.value ?? '';
//                 }
//               },
//             ),
//           ],
//         )));
//   }
// }
