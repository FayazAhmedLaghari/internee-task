import 'dart:async';
import 'package:flutter/material.dart';
import 'package:internee_app_task/MyLogin.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds:5),(){
      setState(() {
        Navigator.push(context,
          MaterialPageRoute(builder: (context)=>MyLogin()),
        );
      });
    }
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('internee.jpeg'), // Replace 'assets/background_image.jpg' with your image path
    fit: BoxFit.cover, // You can change the BoxFit according to your need
    ),
    ),
      ),
    );
  }
}
