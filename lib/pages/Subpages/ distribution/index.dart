import 'package:flutter/material.dart';

import 'ofline/index.dart';
import 'online/index.dart';

class DistributionIndexPage extends StatelessWidget{
  @override
  Widget build( BuildContext  context){
    final title = TextStyle(fontSize: 16.0, color: Colors.white);
    final content = TextStyle(fontSize: 12.0, color: Colors.white38);
    final decor = BoxDecoration(
      border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
    );
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(32, 34, 53, 1),
          ),
          child: Expanded(
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.of(context).push( MaterialPageRoute( builder: (context) => OnlineDistribution() ) );
                  },
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(48.0),
                      decoration: decor,
                      child: Column(
                        children: <Widget>[
                          Text("PHÂN PHỐI ONLINE", style: title),
                          Text("Tạo lịch mới / phân phối theo lịch", style: content, textAlign: TextAlign.center,),
                        ],
                      )
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push( MaterialPageRoute( builder: (context) => OfflineDistribution() ) );
                  },
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(48.0),
                      decoration: decor,
                      child: Column(
                        children: <Widget>[
                          Text("PHÂN PHỐI OFFLINE", style: title),
                          Text("Tạo phân phối offline và đồng bộ dữ liệu khi có kết nối mạng", style: content, textAlign: TextAlign.center,),
                        ],
                      )
                  ),
                ),

              ],
            )
          )
      ),
    );
  }
}