// // import 'dart:html';
// // import 'dart:ui';
// // ignore_for_file: prefer_const_constructors

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// // import 'packasge:firebase_core/firebase_core.dart';

// import 'HomeScreen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   registerSubmit() async {
//     try {
//       await _firebaseAuth.createUserWithEmailAndPassword(
//           email: _emailController.text.toString().trim(),
//           password: _passwordController.text);
//     } catch (e) {
//       print(e);
//       SnackBar(content: Text(e.toString()));
//     }
//   }

//   LoginSubmit() async {
//     try {
//       _firebaseAuth
//           .signInWithEmailAndPassword(
//               email: _emailController.text, password: _passwordController.text)
//           .then((value) => Navigator.of(context).pushReplacement(
//               MaterialPageRoute(builder: (context) => HomeScreen())));
//     } catch (e) {
//       print(e);
//       SnackBar(content: Text(e.toString()));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//               alignment: Alignment.center,
//               padding: EdgeInsets.all(10),
//               margin: const EdgeInsets.only(top: 40),
//               child: Text(
//                 "Latihan Auth",
//                 style: TextStyle(
//                     color: Colors.blue,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 30),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: FlutterLogo(size: 200),
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: TextField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), labelText: "Username"),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: TextField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(), labelText: "Password"),
//               ),
//             ),
//             TextButton(
//               onPressed: () {},
//               child: Text("Forget Password"),
//             ),
//             Container(
//               height: 50,
//               padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//               child: ElevatedButton(
//                 style: raisedButtonStyle,
//                 child: Text("Register"),
//                 onPressed: () {
//                   registerSubmit();
//                 },
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               height: 50,
//               padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//               child: ElevatedButton(
//                 style: raisedButtonStyle,
//                 child: Text("Login"),
//                 onPressed: () {
//                   LoginSubmit();
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
//   onPrimary: Colors.grey[300],
//   primary: Colors.blue[300],
//   minimumSize: Size(88, 36),
//   padding: EdgeInsets.symmetric(horizontal: 16),
//   shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.all(Radius.circular(6))),
// );

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minggu_11/HomeScreen.dart';
import 'package:minggu_11/RegisterScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  loginSubmit() async {
    try {
      _firebaseAuth
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomeScreen(),
              )));
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      // onPrimary: Colors.grey[300],
      // primary: Colors.blue[300],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Latihan Auth",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: FlutterLogo(
                size: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("Forgot password")),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ));
                },
                child: Text("Register"),
                style: raisedButtonStyle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  onPressed: (() {
                    loginSubmit();
                  }),
                  child: Text("Login")),
            )
          ],
        ),
      ),
    );

    // ignore: dead_code
  }
}
