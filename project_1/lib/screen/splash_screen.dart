import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 218, 158),
        body: Center(
          child: Text("SPLASH"),
        ),
      ),
    );
  }
}