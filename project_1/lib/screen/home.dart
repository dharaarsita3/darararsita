// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
// }
//   List<dynamic> users = [];
//   @override
//   Widget build(BuildContext context) 
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Call API Test"),
//         backgroundColor: Colors.green,
//       ),
//       body: GridView.count(
//           crossAxisCount: 2,
//           children: List.generate(users.length, (index) {
//           })
//             final userTitle = user['name']['title'];
//             final userFirst = user['name']['first'];
//             final userLast = user['name']['last'];
//             final userFullName = '$userTitle $userFirst $userLast';
//             final email = user['email'];
//             final avatarUrl = user['picture']['thumbnail'];
//           return Container(
//             child:Card(
//               //color: Colors.deep{PurpleAccent,}
//               color: Colors.grey[50],
//               shadowColor:Colors.black,
//               child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//                 const SizedBox(
//                   height: 10,
//                 ),
//                   CircleAvatar(
//                     backgroundColor: Colors,green[500],
//                     radius: 48,
//                     child: CircleAvatar(
//                       backgroundImage: NetworkImage(avatarUrl),
//                       radius: 42,
//                     ),
//                   ),
//                   const SizedBox(
//                     height:10,
//                   ),
//                   ListTile(
//                     title: Text(
//                       userFullName,
//                       style: TextStyle(fontSize: 16),
//                       textAlign: TextAlign.center,
//                     ),
//                     subtitle: Text,(
//                       email,
//                       style: TextStyle(fontSize:10),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//               ]),
//             ));
//     ),
//     )

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: const Center(
        child: Text("Welcome to my app"),
      ),
    );
  }
  
  AppBar buildAppbar() {
    return AppBar(
      elevation:  0,
      leading:  IconButton(
        onPressed: () {},
        icon: const Icon(Icons.drag_handle),
      ),
    );
  }
}