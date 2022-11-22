// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:minggu_11/EditProfile.dart';
// import 'package:minggu_11/profile.dart';
// import 'package:minggu_11/LoginScreen.dart';
// import 'package:minggu_11/HomeScreen.dart';

// class DrawerScreen extends StatefulWidget {
//   @override
//   _DrawwerScreenState createState() => _DrawwerScreenState();
// }

// class _DrawwerScreenState extends State<DrawerScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//         child: ListView(
//       children: <Widget>[
//         UserAccountsDrawerHeader(
//           accountName: Text("Justina Xie"),
//           currentAccountPicture: CircleAvatar(
//               backgroundImage: AssetImage("assets/img/justina.jpg")),
//           accountEmail: Text("e41212382@students.polije.ac.id"),
//         ),
//         DrawerListTile(
//           iconData: Icons.person,
//           title: "Edit Profile",
//           onTilePressed: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => Profile()));
//           },
//         ),
//         DrawerListTile(
//           iconData: Icons.group,
//           title: "New Group",
//           onTilePressed: () {},
//         ),
//         DrawerListTile(
//           iconData: Icons.lock,
//           title: "New Secret Group",
//           onTilePressed: () {},
//         ),
//         DrawerListTile(
//           iconData: Icons.notifications,
//           title: "New Channel Chat",
//           onTilePressed: () {},
//         ),
//         DrawerListTile(
//           iconData: Icons.contacts,
//           title: "contacts",
//           onTilePressed: () {},
//         ),
//         DrawerListTile(
//           iconData: Icons.bookmark_border,
//           title: "Saved Massage",
//           onTilePressed: () {},
//         ),
//         DrawerListTile(
//           iconData: Icons.phone,
//           title: "Calls",
//           onTilePressed: () {},
//         )
//       ],
//     ));
//   }
// }

// class DrawerListTile extends StatelessWidget {
//   final IconData iconData;
//   final String title;
//   final VoidCallback onTilePressed;

//   const DrawerListTile(
//       {Key? key,
//       required this.iconData,
//       required this.title,
//       required this.onTilePressed})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onTilePressed,
//       dense: true,
//       leading: Icon(iconData),
//       title: Text(
//         title,
//         style: TextStyle(fontSize: 16),
//       ),
//     );
//   }
// }
