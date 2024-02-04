//  import 'package:flutter/material.dart';
// bool _isChecked = false;

// void showBottomSheet( context) {
//     showModalBottomSheet(
//       context: context,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
//       ),
//       builder: (BuildContext context) {
//         final double screenHeight = MediaQuery.of(context).size.height;
//         final double appBarHeight = AppBar().preferredSize.height;
//         final double statusBarHeight = MediaQuery.of(context).padding.top;
//         final double bottomSheetHeight =
//             screenHeight - appBarHeight - statusBarHeight;

//         return Padding(
//             padding: EdgeInsets.only(
//                 top: 16.0,
//                 bottom: bottomSheetHeight * 0.05), //
//             child: Column(
//                 // mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Container(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.close),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                         ),
//                         Text(
//                           "  G4 باقات ",
//                           style: TextStyle(fontSize: 18),
//                         ),
//                         Text("")
//                       ],
//                     ),
//                   ),
//                   Divider(),
//                   Container(
//                     width: 200,
//                     child: CheckboxListTile(
//                       title: Text('  تسديد مبلغ السلفه', style:TextStyle( color:Colors.blue)),
//                       value: _isChecked,
//                       onChanged: (bool? value) {
//                         // setState(() {
//                         //   _isChecked = value ?? false;
//                         // });
//                       },
//                     ),
//                   ),
//                   Container(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(" ريال", style: TextStyle(fontSize: 18)),
//                         Container(
//                           alignment: Alignment.center,
//                           width: 70.0,
//                           height: 20,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: Colors.black,
//                               width: 1.0,
//                             ),
//                           ),
//                           child: TextField(
//                             textAlignVertical: TextAlignVertical.center,
//                             textAlign: TextAlign.center,
//                             decoration: InputDecoration(
//                               border: InputBorder.none,
//                             ),
//                             style: TextStyle(fontSize: 16.0), //
//                           ),
//                         ),
//                         Text(" سعر الباقه", style: TextStyle(fontSize: 18))
//                       ],
//                     ),
//                   ),
//                   Divider(),
//                   Text(" الصافي يعدخصم الضريبه الحكومي ", style: TextStyle(fontSize: 18)),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("   الرصيد الحالي"),
//                       Text("   الرصيد  المتبقي")
//                     ],
//                   ),
//                   Divider(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [ Icon(Icons.delete),
//                   Text("حذف الباقه", style: TextStyle(fontSize: 18)),
//                   Text("")

//                   ],)
//                 ]));
//       },
//     );
//   }
// import 'dart:async';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';

// class ConnectivityApp extends StatefulWidget {
//   const ConnectivityApp({Key? key}) : super(key: key);

//   @override
//   State<ConnectivityApp> createState() => _ConnectivityAppState();
// }

// class _ConnectivityAppState extends State<ConnectivityApp> {
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;
//   bool _isConnected = true;

//   @override
//   void initState() {
//     super.initState();
//     _checkConnectivity();
//     _subscribeToConnectivityChanges();
//   }

//   @override
//   void dispose() {
//     _connectivitySubscription.cancel();
//     super.dispose();
//   }

//   Future<void> _checkConnectivity() async {
//     var connectivityResult = await Connectivity().checkConnectivity();
//     setState(() {
//       _isConnected = connectivityResult != ConnectivityResult.none;
//     });
//   }

//   void _subscribeToConnectivityChanges() {
//     _connectivitySubscription =
//         Connectivity().onConnectivityChanged.listen((result) {
//       setState(() {
//         _isConnected = result != ConnectivityResult.none;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           children: [
//             Navigator(
//               onGenerateRoute: (settings) => MaterialPageRoute(
//                 builder: (context) => Builder(
//                   builder: (context) => _buildScreen(context),
//                 ),
//               ),
//             ),
//             if (!_isConnected)
//               Positioned(
//                 left: 0,
//                 right: 0,
//                 bottom: 0,
//                 child: Container(
//                   color: Colors.red,
//                   padding: const EdgeInsets.all(16),
//                   child: Text(
//                     'No Internet Connection',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildScreen(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('App Title'),
//       ),
//       body: Center(
//         child: Text(
//           'Screen Content',
//           style: Theme.of(context).textTheme.headline6,
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityApp extends StatefulWidget {
  const ConnectivityApp({Key? key}) : super(key: key);

  @override
  State<ConnectivityApp> createState() => _ConnectivityAppState();
}

class _ConnectivityAppState extends State<ConnectivityApp> {


  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
    _subscribeToConnectivityChanges();
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> _checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      _isConnected = connectivityResult != ConnectivityResult.none;
    });
  }

  void _subscribeToConnectivityChanges() {
    _connectivitySubscription =
        Connectivity().onConnectivityChanged.listen((result) {
      setState(() {
        _isConnected = result != ConnectivityResult.none;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(children: [
        Navigator(
          onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => Builder(
              builder: (context) => _buildScreen(context),
            ),
          ),
        ),
        if (!_isConnected)
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: NoInternetConnectionMessage(), // استدعاء العنصر المخصص هنا
          ),
      ])),
    );
  }

  Widget _buildScreen(BuildContext context) {
    return const Scaffold(
    );
  }
}

class NoInternetConnectionMessage extends StatelessWidget {
  const NoInternetConnectionMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(16),
      child: const Text(
        'No Internet Connection',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
