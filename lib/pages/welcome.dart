import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build( BuildContext  context){
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(32, 34, 53, 1),
          ),
          child: Center(
            child: Text("Welcome to the sommonors' rift", style: TextStyle(color: Colors.white)),
          )
      ),
    );
  }
}