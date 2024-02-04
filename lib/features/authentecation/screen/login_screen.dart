// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   // Future signIn() async {
//   //   await FirebaseAuth.instance.signInWithEmailAndPassword(
//   //       email: emailController.text.trim(),
//   //       password: passwordController.text.trim());
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 16,
//                 vertical: 8,
//               ),
//               child: TextField(
//                 // focusNode: emailFocusNode,
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: "اسم الدخول",
//                 ),
//                 style: Theme.of(context).textTheme.bodyMedium,
//                 // onChanged: (value) {
//                 //   numLook?.change(value.length.toDouble());
//                 // },
//               ),
//             ),
//             const SizedBox(height: 8),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 16,
//                 vertical: 8,
//               ),
//               child: TextField(
//                 // focusNode: passwordFocusNode,
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: "كلمة المرور",
//                 ),
//                 obscureText: true,
//                 style: Theme.of(context).textTheme.bodyMedium,
//                 onChanged: (value) {},
//               ),
//             ),
//             const SizedBox(height: 32),
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: 64,
//               //! elvatedBoutton
//               child: GestureDetector(
//                 onTap: signIn,
//                 final email = emailController.text;
//                 final password = passwordController.text;

//                 showLoadingDialog(context);
//                 await Future.delayed(
//                   const Duration(milliseconds: 2000),
//                 );
//                 if (mounted) Navigator.pop(context);

//                 if (email == validEmail && password == validPassword) {
//                   trigSuccess?.change(true);
//                   Get.to(MyHomePage());
//                 } else {
//                   trigFail?.change(true);
//                 }

//                 child: const Text("Login"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
