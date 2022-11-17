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