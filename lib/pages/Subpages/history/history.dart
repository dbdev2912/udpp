import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget{
  @override
  Widget build( BuildContext  context){
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(32, 34, 53, 1),
          ),
          child: Center(
            child: Text("History index file", style: TextStyle(color: Colors.white)),
          )
      ),
    );
  }
}