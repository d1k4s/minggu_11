// // import 'dart:html';
// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_import

// import 'dart:html';
// import 'dart:ui';
// import 'dart:async';
// import 'dart:io' show Platform;
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:baseflow_plugin_template/baseflow_plugin_template.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:minggu_11/LoginScreen.dart';
// import 'package:minggu_11/GeoLocation.dart';

// class HomeScreen extends StatelessWidget {
//   Future<void> _signOut() async {
//     await FirebaseAuth.instance.signOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     if (auth.currentUser != null) {
//       print(auth.currentUser!.email);
//     }
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 60),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
//                 IconButton(
//                   icon: Icon(Icons.extension),
//                   onPressed: () {
//                     _signOut().then((value) => Navigator.of(context)
//                         .pushReplacement(MaterialPageRoute(
//                             builder: (context) => GeolocatorWidget())));
//                   },
//                 )
//               ],
//             ),
//             SizedBox(height: 37),
//             Text.rich(
//               TextSpan(
//                 children: <TextSpan>[
//                   TextSpan(
//                     text: "Welcome, \n",
//                     style: TextStyle(color: Colors.blue[30]),
//                   ),
//                   TextSpan(
//                     text: auth.currentUser!.email,
//                     style: TextStyle(color: Colors.blue[30]),
//                   ),
//                 ],
//               ),
//               style: TextStyle(fontSize: 30),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               decoration: InputDecoration(
//                   prefixIcon: Icon(Icons.search, size: 18),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(16)),
//                   hintText: "Search"),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Recomended Place",
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//             ),
//             Container(
//               child: ElevatedButton(
//                 onPressed: () {
//                   _signOut().then((value) => Navigator.of(context)
//                       .pushReplacement(MaterialPageRoute(
//                           builder: (context) => LoginScreen())));
//                 },
//                 child: Text('LogOut'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minggu_11/DrawerScreen.dart';
import 'package:minggu_11/LoginScreen.dart';
import 'package:minggu_11/GeoLocation.dart';
import 'package:minggu_11/DrawerScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser!.email);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("dashboard"),
      ),
      // drawer: DrawerScreen(),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: "Welcome, \n",
                    style: TextStyle(color: Colors.blue[300])),
                TextSpan(
                    text: auth.currentUser!.email,
                    style: TextStyle(color: Colors.blue[900]))
              ]),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 130,
            ),
            Lokasi(),
            SizedBox(height: 250),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    _signOut().then((value) =>
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )));
                  },
                  child: Text("Logout")),
            ),
          ],
        ),
      ),
    );
  }
}
