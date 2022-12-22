import 'package:flutter/material.dart';
import 'package:udpp/pages/Subpages/%20distribution/online/schedule.dart';
import 'package:udpp/pages/Subpages/%20distribution/online/tier1.dart';
import 'package:udpp/pages/Subpages/%20distribution/online/tier2.dart';

class OnlineDistribution extends StatelessWidget{
  @override
  Widget build( BuildContext  context){
    final title = TextStyle(fontSize: 16.0, color: Colors.white);
    final decor = BoxDecoration(
        border: Border( bottom: BorderSide( width: 2.0, color: Colors.white10 ) )
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(

                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(32, 34, 53, 1),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                              margin: EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_back_ios, color: Colors.white)
                          ),
                        )
                    ),
                    Expanded(
                        child: Text(
                          "PHÂN PHỐI ONLINE",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                    ),
                  ],
                )
            ),
            Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(32, 34, 53, 1),
                    ),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push( MaterialPageRoute( builder: (context) => Tier1() ) );
                          },
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(48.0),
                              decoration: decor,
                              child: Column(
                                children: <Widget>[
                                  Text("TẠO MỚI ĐẠI LÝ XUỐNG CẤP 1", style: title),
                                ],
                              )
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push( MaterialPageRoute( builder: (context) => Tier2() ) );
                          },
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(48.0),
                              decoration: decor,
                              child: Column(
                                children: <Widget>[
                                  Text("TẠO MỚI ĐẠI LÝ XUỐNG CẤP 2", style: title),
                                ],
                              )
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push( MaterialPageRoute( builder: (context) => Schedule() ) );
                          },
                          child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(48.0),
                              decoration: decor,
                              child: Column(
                                children: <Widget>[
                                  Text("PHÂN PHỐI THEO LỊCH", style: title),
                                ],
                              )
                          ),
                        ),

                      ],
                    )
                )
            ),
          ],
        )
      )

    );
  }
}