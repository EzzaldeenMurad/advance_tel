// import 'package:fawry_cach/features/authentecation/screen/login_screen.dart';

// import 'package:flutter/material.dart';

// import '../../../example.dart';

// class AuthScreen extends StatelessWidget {
//   const AuthScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         // initialData: initialData,
//         builder: (context, snapshot) {
//           if(snapshot.hasData){
//             return Example();
//           }
//           else{
//             return const LoginScreen();
//           }
        
//         },
//       ),
//     );
//   }
// }