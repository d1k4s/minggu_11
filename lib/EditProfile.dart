// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:minggu_11/RegisterScreen.dart';

// class EditProfile extends StatefulWidget {
//   @override
//   State<EditProfile> createState() => _EditProfileState();
// }

// class _EditProfileState extends State<EditProfile> {
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   bool isLoading = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text(
//           "Edit Profile",
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//         actions: <Widget>[
//           IconButton(
//             onPressed: () => Navigator.pop(context),
//             icon: Icon(
//               Icons.done,
//               size: 30.0,
//               color: Colors.green,
//             ),
//           ),
//         ],
//       ),
//       body: isLoading
//           ? circularProgress()
//           : ListView(
//               children: <Widget>[
//                 Container(
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.only(
//                           top: 16.0,
//                           bottom: 8.0,
//                         ),
//                         child: CircleAvatar(
//                           radius: 50.0,
//                           backgroundImage:
//                               CachedNetworkImageProvider(user.photoUrl),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(16.0),
//                         child: Column(
//                           children: <Widget>[
//                             buildDisplayNameField(),
//                             buildBioField(),
//                           ],
//                         ),
//                       ),
//                       RaisedButton(
//                         onPressed: updateProfileData,
//                         child: Text(
//                           "Update Profile",
//                           style: TextStyle(
//                             color: Theme.of(context).primaryColor,
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(16.0),
//                         child: FlatButton.icon(
//                           onPressed: logout,
//                           icon: Icon(Icons.cancel, color: Colors.red),
//                           label: Text(
//                             "Logout",
//                             style: TextStyle(color: Colors.red, fontSize: 20.0),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }
